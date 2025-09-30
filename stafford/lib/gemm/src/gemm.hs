{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeOperators     #-}
{-# LANGUAGE ViewPatterns      #-}
module Main where

import Bioshake.TH
import           Bioshake
import           Bioshake.BWA               as B
import qualified Bioshake.Gridss            as G
import qualified Bioshake.Octopus           as O
import qualified Bioshake.Platypus          as P
import           Bioshake.Samtools          as S
import           Bioshake.SnpEff
import           Development.Shake
import           Development.Shake.FilePath

threads = 42

data In = In String Label
  deriving Show

data Label = Baseline | T1 | T3 | Cellline | Ref
  deriving (Eq, Show, Ord, Enum)

samples = [(In "FR07888636" Baseline)
          ,(In "FR07888707" T1)
          ,(In "FR07888715" T3)
          ,(In "FR07888723" Cellline)
          ,(In "Germline"   Ref)]

instance Pathable In where
  paths (In id lab) =
    case lab of
      Ref -> ["fastqs/ana/pool3_NEXS1348/1649_S7_R1.fastq.gz"
             ,"fastqs/ana/pool3_NEXS1348/1649_S7_R2.fastq.gz"
             ,"fastqs/ana/pool4_NEXS1351/1649_S7_R1.fastq.gz"
             ,"fastqs/ana/pool4_NEXS1351/1649_S7_R2.fastq.gz"
             ,"fastqs/ana/pool1_NEXS1338/1649_S7_R1.fastq.gz"
             ,"fastqs/ana/pool1_NEXS1338/1649_S7_R2.fastq.gz"
             ,"fastqs/ana/pool2_NEXS1345/1649_S7_R1.fastq.gz"
             ,"fastqs/ana/pool2_NEXS1345/1649_S7_R2.fastq.gz"
             ,"fastqs/ana/FD00826873.1.fastq.gz"
             ,"fastqs/ana/FD00826873.2.fastq.gz"]
      _ -> ["fastqs" </> "HGNV5ALXX_" ++ show (2 + fromEnum lab) ++ "_170502_" ++ id ++ "_Mus-musculus__R_170502_HOLBAR_DNA_M001_R" ++ show i ++ ".fastq.gz" | i <- [1, 2]]
instance Compilable In
instance IsFastQ In
instance PairedEnd In
instance Referenced In where
  getRef _ = "/ref/mm10.fa"
  name _ = "mm10"

-- Merge lanes
data Merge c = Merge c
 deriving Show

instance (Show a, Pathable a) => Pathable (a :-> Merge c) where
  paths (a :-> _) =
    let stem = hashPath (paths a, show a)
    in [stem <.> "merge.1", stem <.> "merge.2"]

buildMerge _ (paths -> inputs) [o1, o2] =
  let (r1, r2) = splitPairs inputs
  in do
    () <- run "cat" r1 ">" o1
    run "cat" r2 ">" o2
  where
    splitPairs []       = ([], [])
    splitPairs (a:b:cs) = let (x, y) = splitPairs cs in (a:x, b:y)

instance IsFastQ (a :-> Merge c)

$(makeSingleThread ''Merge [''IsFastQ] 'buildMerge)

for = flip map

main =
  give (Threads threads) $ bioshake threads shakeOptions $
  do
    want $ map ("out" </>) ["platypus.vcf", "gridss.vcf", "gridss.bam", "octopus.vcf"]
    S.indexRules
    compileRules $ do
      let alignments = for samples $ \x@(In id _) -> x :-> merge :-> align :-> sam2Bam :-> sortBam :-> addRGLine id :-> out ["out" </> id <.> "bam"]

      compile $ withAll alignments :-> P.call :-> annotate :-> out ["out" </> "platypus.vcf"]
      compile $ withAll alignments :-> O.callWith [O.fast, O.noFilter] :-> annotate :-> out ["out" </> "octopus.vcf"]
      compile $ withAll alignments :-> G.call :-> G.variants :-> out ["out" </> "gridss.vcf"]
      compile $ withAll alignments :-> G.call :-> G.assemblies :-> out ["out" </> "gridss.bam"]

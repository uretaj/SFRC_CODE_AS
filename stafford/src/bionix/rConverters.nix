{writeText}: {
  rToOrg = writeText "rToOrg.awk" ''
    BEGIN{FS=","; OFS="|"}
    FNR==2{print "|-"}
    {$1=$1; print "|" $0 "|"}
  '';

  rToMd = writeText "rToMarkdown.awk" ''
    BEGIN{FS=","; OFS="|"}
    NR==1{ $1=$1;print; # print 1st line (colnames) with OFS
     # build line with fields of each char of colnames replaced by dashes
     for (i=1;i<=NF;i++)
           { dashes=gensub(/./,"-","G",$i);
             (i==1)?h2=dashes:h2=h2 OFS dashes;
            };
          {print h2}
         }
    NR>1{ $1=$1;print }
  '';
}

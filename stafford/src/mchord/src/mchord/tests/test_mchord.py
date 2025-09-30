import unittest
from io import StringIO

from mchord.mchord import *

TEST_BED = (
                "Chr1\t1000000\t1000100\n"
                "Chr1\t2000000\t2000100\n"
                "Chr1\t3000000\t3000100\n"
                "Chr1\t4000000\t4000100\n"
                "Chr1\t5000000\t5000100\n"
                "Chr1\t6000000\t6000100\n"
                "Chr1\t7000000\t7000100\n"
                "Chr12\t1000000\t1000100\n"
                "Chr12\t2000000\t2000100\n"
                "Chr12\t3000000\t3000100\n"
                "Chr12\t4000000\t4000100\n"
                "Chr12\t5000000\t5000100\n"
                "Chr12\t6000000\t6000100\n"
                "Chr12\t7000000\t7000100\n"
        )

TEST_VCF = (
                '##fileformat=VCFv4.3\n'
                '##FILTER=<ID=PASS,Description="All filters passed">\n'
                '##reference=ref\n'
                '##contig=<ID=chr1,length=248956422>\n'
                '##contig=<ID=chr12,length=133275309>\n'
                '##FORMAT=<ID=GT,Number=1,Type=String,Description="Genotype">\n'
                '##FORMAT=<ID=DP,Number=1,Type=Integer,Description="Read depth at this position for this sample">\n'
                '##FORMAT=<ID=FT,Number=1,Type=String,Description="Sample genotype filter indicating if this genotype was called">\n'
                '##FORMAT=<ID=GQ,Number=1,Type=Integer,Description="Conditional genotype quality (phred-scaled)">\n'
                '##FORMAT=<ID=PS,Number=1,Type=String,Description="Phase set">\n'
                '##FORMAT=<ID=PQ,Number=1,Type=Integer,Description="Phasing quality">\n'
                '##FORMAT=<ID=MQ,Number=1,Type=Integer,Description="RMS mapping quality">\n'
                '##FORMAT=<ID=HPC,Number=.,Type=Float,Description="Posterior pseudo counts for each haplotype">\n'
                '##FORMAT=<ID=MAP_HF,Number=.,Type=Float,Description="Maximum a posteriori haplotype frequencies">\n'
                '##FORMAT=<ID=HF_CR,Number=.,Type=Float,Description="Haplotype frequency credible regions">\n'
                '##FORMAT=<ID=HSS,Number=.,Type=Integer,Description="Somatic status for each haplotype">\n'
                '##INFO=<ID=AC,Number=A,Type=Integer,Description="Allele count in genotypes, for each ALT allele, in the same order as listed">\n'
                '##INFO=<ID=AN,Number=1,Type=Integer,Description="Total number of alleles in called genotypes">\n'
                '##INFO=<ID=DP,Number=1,Type=Integer,Description="Combined depth across samples">\n'
                '##INFO=<ID=MQ,Number=1,Type=Integer,Description="RMS mapping quality">\n'
                '##INFO=<ID=MQ0,Number=1,Type=Integer,Description="Number of MAPQ == 0 reads covering this record">\n'
                '##INFO=<ID=NS,Number=1,Type=Integer,Description="Number of samples with data">\n'
                '##INFO=<ID=END,Number=1,Type=Integer,Description="End position on CHROM">\n'
                '##INFO=<ID=SOMATIC,Number=0,Type=Flag,Description="Indicates that the record is a somatic mutation, for cancer genomics">\n'
                '##INFO=<ID=PP,Number=1,Type=Float,Description="Posterior probability for assertions made in ALT and FORMAT (Phred scale)">\n'
                '##INFO=<ID=MP,Number=1,Type=Float,Description="Model posterior">\n'
                '##octopus=<version=0.7.1>\n'
                '#CHROM\tPOS\tID\tREF\tALT\tQUAL\tFILTER\tINFO\tFORMAT\ttest\n'
                'Chr1\t1000050\t.\tC\tT\t10210.9\tPASS\tAC=2;AN=3;DP=1487;MQ=38;NS=1;PP=3076.53\tGT:GQ:DP:MQ:PS:PQ:HSS:FT\t1|0|1:3077:1487:38:1645704:100:1,0,0:PASS\n'
                'Chr1\t2000050\t.\tT\tC\t298.27\tPASS\tAC=2;AN=2;DP=64;MQ=22;NS=1;PP=22.6\tGT:GQ:DP:MQ:PS:PQ:FT\t1|1:21:64:22:2642639:100:PASS\n'
                'Chr1\t3000050\t.\tA\tG\t10210.9\tPASS\tAC=1;AN=2;DP=960;MQ=57;NS=1;PP=86.33\tGT:GQ:DP:MQ:PS:PQ:FT\t0|1:86:960:57:2841185:100:PASS\n'
                'Chr1\t4000050\t.\tC\tT\t10210.9\tPASS\tAC=1;AN=2;DP=1471;MQ=57;NS=1;PP=146.9\tGT:GQ:DP:MQ:PS:PQ:FT\t0|1:147:1471:57:2841185:100:PASS\n'
                'Chr1\t5000050\t.\tG\tT\t10210.9\tPASS\tAC=3;AN=3;DP=1609;MQ=57;NS=1;PP=3076.53\tGT:GQ:DP:MQ:PS:PQ:HSS:FT\t1|1|1:3073:1609:57:3849722:100:0,0,1:PASS\n'
                'Chr1\t6000050\t.\tT\tC\t10207.9\tPASS\tAC=1;AN=2;DP=1514;MQ=57;NS=1;PP=38.64\tGT:GQ:DP:MQ:PS:PQ:FT\t1|0:39:1514:57:4849748:100:PASS\n'
                'Chr1\t7000050\t.\tC\tT\t10210.9\tPASS\tAC=1;AN=3;DP=1479;MQ=57;NS=1;PP=77.96;SOMATIC\tGT:GQ:DP:MQ:PS:PQ:HSS:HPC:MAP_HF:HF_CR:FT\t0|0|1:3077:1479:57:5850941:63:0,0,1:611.466,67,591.252:0.48,0.053,0.47:0.46,0.5,0.043,0.064,0.44,0.49:PASS\n'
                'Chr1\t7000053\t.\tT\tC\t10210.9\tPASS\tAC=1;AN=2;DP=1562;MQ=57;NS=1;PP=29.32\tGT:GQ:DP:MQ:PS:PQ:FT\t1|0:29:1562:57:6836078:100:PASS\n'
                'Chr1\t7000056\t.\tG\tA\t10210.9\tPASS\tAC=2;AN=2;DP=1525;MQ=57;NS=1;PP=3076.53\tGT:GQ:DP:MQ:PS:PQ:FT\t1|1:2789:1525:57:7853370:100:PASS\n'
                'Chr12\t1000050\t.\tT\tA\t10210.9\tPASS\tAC=2;AN=4;DP=1354;MQ=56;NS=1;PP=3076.53\tGT:GQ:DP:MQ:PS:PQ:HSS:FT\t1|1|0|0:3077:1354:56:8850036:100:0,1,0,1:PASS\n'
                'Chr12\t2000050\t.\tTA\tT\t670.86\tFRF\tAC=2;AN=4;DP=1428;MQ=57;NS=1;PP=670.86;SOMATIC\tGT:GQ:DP:MQ:PS:PQ:HSS:HPC:MAP_HF:HF_CR:FT\t0|1|0|1:885:1428:57:8850036:100:0,1,0,1:490.67,103.976,444.879,71:0.44,0.094,0.4,0.064:0.42,0.47,0.08,0.11,0.38,0.42,0.053,0.077:FRF\n'
                'Chr12\t3000050\t.\tG\tA\t10210.9\tPASS\tAC=1;AN=2;DP=1367;MQ=57;NS=1;PP=28.52\tGT:GQ:DP:MQ:PS:PQ:FT\t1|0:29:1367:57:10850012:100:PASS\n'
                'Chr12\t4000050\t.\tA\tG\t10210.9\tPASS\tAC=1;AN=2;DP=1572;MQ=57;NS=1;PP=39.51\tGT:GQ:DP:MQ:PS:PQ:FT\t0|1:40:1572:57:11850620:100:PASS\n'
                'Chr12\t5000050\t.\tG\tT\t10210.9\tPASS\tAC=1;AN=2;DP=1458;MQ=57;NS=1;PP=40.19\tGT:GQ:DP:MQ:PS:PQ:FT\t0|1:40:1458:57:13407686:100:PASS\n'
                'Chr12\t6000050\t.\tTC\tT\t10210.9\tPASS\tAC=2;AN=2;DP=1318;MQ=57;NS=1;PP=3076.53\tGT:GQ:DP:MQ:PS:PQ:FT\t1|1:3077:1318:57:14408544:100:PASS\n'
                'Chr12\t7000050\t.\tT\tC\t10210.9\tPASS\tAC=1;AN=2;DP=1555;MQ=57;NS=1;PP=27.38\tGT:GQ:DP:MQ:PS:PQ:FT\t1|0:27:1555:57:14408544:100:PASS\n'
                'Chr12\t7000050\t.\tT\tC\t165.38\tMQ\tAC=2;AN=2;DP=31;MQ=19;NS=1;PP=30.41\tGT:GQ:DP:MQ:PS:PQ:FT\t1|1:29:31:19:17203706:100:MQ\n'
        )


class MchordTestCase(unittest.TestCase):
    def test_get_calls(self):
        result = list(get_calls(StringIO(TEST_VCF)))
        self.assertEqual(len(result),15)
        self.assertEqual(result[7],('chr1', 7000056, '1|1:2789:1525:57:7853370:100:PASS'))
        self.assertEqual(result[13],('chr12', 7000050, '1|0:27:1555:57:14408544:100:PASS'))
        self.assertEqual(len(list(get_calls(StringIO(TEST_VCF),include_somatic=True))),17)
        #print(result)

    def test_is_het(self):
        self.assertEqual(is_het('1|1:2789:1525:57:7853370:100:PASS'),False)
        self.assertEqual(is_het('1|0:2789:1525:57:7853370:100:MQ'),False)
        self.assertEqual(is_het('1|0:2789:1525:57:7853370:100:PASS'),True)
        self.assertEqual(is_het('0|1:2789:1525:57:7853370:100:PASS'),True)
        self.assertEqual(is_het('0|1|1:2789:1525:57:7853370:100:PASS'),True)
        self.assertEqual(is_het('1|0|1:2789:1525:57:7853370:100:PASS'),True)
        self.assertEqual(is_het('1|1|1:2789:1525:57:7853370:100:PASS'),False)
        self.assertEqual(is_het('1|1|1|1:2789:1525:57:7853370:100:PASS'),False)
        self.assertEqual(is_het('1|0|1|1:2789:1525:57:7853370:100:PASS'),True)
        self.assertEqual(is_het('1|0|0|1:2789:1525:57:7853370:100:PASS'),True)
        self.assertEqual(is_het('0|0|0|1:2789:1525:57:7853370:100:PASS'),True)

    def test_ChrRegionStates(self):
        crs = ChrRegionStates()
        crs.add_region(10,100)
        crs.add_region(200,300)
        self.assertEqual(str(crs),'{(10, 100): False, (200, 300): False}')
        crs.set_state(42,True)
        crs.set_state(111,True)
        self.assertEqual(str(crs), '{(10, 100): True, (200, 300): False}')
        self.assertEqual(crs.get_state(250),False)
        self.assertEqual(crs.get_state(50),True)
        self.assertEqual(crs.get_state(2737),False)

    def test_RegionStates(self):
        rs = RegionStates(StringIO(TEST_BED))
        self.assertEqual(len(str(rs.items())),520)
        self.assertEqual(rs['chr1'][('1000000', '1000100')],False)
        rs.set_states_from_vcf(StringIO(TEST_VCF))
        self.assertEqual(rs['chr1'][('1000000', '1000100')], True)
        self.assertEqual(rs.ascii_map(),
                         ('chr1 .*..*..\nchr2 \nchr3 \nchr4 \nchr5 \nchr6 \n'
                          'chr7 \nchr8 \nchr9 \nchr10 \nchr11 \nchr12 .*...*.\n'
                          'chr13 \nchr14 \nchr15 \nchr16 \nchr17 \nchr18 \n'
                          'chr19 \nchr20 \nchr21 \nchr22 \n')
                         )
        self.assertEqual(rs.ascii_map(statemap={True:'#',False:'_'},
                                      chromosomes=['chr1',]
                                      ),
                         'chr1 #_##_##\n'
                         )
        self.assertEqual(rs.state_runs(),[1, 1, 1, 1])
        rs['chr1'].set_state(3000001,False)
        self.assertEqual(rs.state_runs(), [2, 1, 1, 1])

    def test_make_null_distribution(self):
        state_runs = make_null_distribution([StringIO(TEST_VCF),],
                                            targets=StringIO(TEST_BED))
        self.assertEqual(state_runs,[1,1,1,1])


    def test_expand_state_runs(self):
        self.assertEqual(expand_state_runs([1,3,4,0]),
                         [1,3,3,3,4,4,4,4])

    def test_main(self):
        test_out = StringIO()
        main(infiles=[StringIO(TEST_VCF),],
             targets_bed=StringIO(TEST_BED),
             outfile=test_out,
             null_distribution=StringIO('[1,3]'),
             show_ascii=False,
             make_null=False,
             )
        self.assertEqual(test_out.getvalue().split('\n')[1],'test\t0.750')

if __name__ == '__main__':
    unittest.main()

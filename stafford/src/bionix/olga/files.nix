{ bionix }:

with bionix.lib;

let
  groupBy' = f: x: mapAttrs (_: head) (groupBy f x);
  meta = [
    {
      md5 = "caf7cc75ba2d66a6d43f05e2654a1d6d";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H52HNALXX_1_160829_FR07888542_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888542";
      read = 1;
    }
    {
      md5 = "d2e02652b4959aece6571b615ecd2daa";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H52HNALXX_1_160829_FR07888542_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888542";
      read = 2;
    }
    {
      md5 = "7c1cebb3f5ae912cfe3e6871c042785b";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H52HNALXX_2_160829_FR07888549_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888549";
      read = 1;
    }
    {
      md5 = "7ab3f909987c32919de36e86a22f3e3e";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H52HNALXX_2_160829_FR07888549_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888549";
      read = 2;
    }
    {
      md5 = "248d921a432e92d8e25e871a1769b2f3";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H52HNALXX_3_160829_FR07888557_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888557";
      read = 1;
    }
    {
      md5 = "105b74b40f9b1484517c0f3f2854164e";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H52HNALXX_3_160829_FR07888557_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888557";
      read = 2;
    }
    {
      md5 = "16a4a1b4b7245d89f1b90e0759592477";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H52VJALXX_1_160829_FR07888597_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888597";
      read = 1;
    }
    {
      md5 = "ac29b75867ccd4c4be31dbad1983fcfd";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H52VJALXX_1_160829_FR07888597_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888597";
      read = 2;
    }
    {
      md5 = "87facd043f971f5a3bcfd20c03012bc0";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H55YCALXX_3_160829_FR07888548_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888548";
      read = 1;
    }
    {
      md5 = "1e8d6b18b2cfcedb5435b9bed786a49b";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H55YCALXX_3_160829_FR07888548_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888548";
      read = 2;
    }
    {
      md5 = "83a06467af8d39107fe8e88c7e0c90f0";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H55YCALXX_4_160829_FR07888549_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888549";
      read = 1;
    }
    {
      md5 = "403c2fb8039e91e3306870a891068c10";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H55YCALXX_4_160829_FR07888549_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888549";
      read = 2;
    }
    {
      md5 = "2c1a1ca8df35fe2cc5b4dfb4b87cf832";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H55YCALXX_5_160829_FR07888550_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888550";
      read = 1;
    }
    {
      md5 = "71d27c3fec392da962c4410c7e7c4de4";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H55YCALXX_5_160829_FR07888550_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888550";
      read = 2;
    }
    {
      md5 = "a1af2e248a7cb97526585a1561d0b34e";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H55YCALXX_6_160829_FR07888541_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888541";
      read = 1;
    }
    {
      md5 = "bac3f2c88b346ef182f6fb8a9c1697c6";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H55YCALXX_6_160829_FR07888541_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888541";
      read = 2;
    }
    {
      md5 = "68edf094535d9008f99f03d891a9295f";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H55YCALXX_8_160829_FR07888543_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888543";
      read = 1;
    }
    {
      md5 = "d2318d4284bbc70922a83fdc583fd6aa";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H55YCALXX_8_160829_FR07888543_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888543";
      read = 2;
    }
    {
      md5 = "3b801c23d811f441afc4386fa37817d0";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H5753ALXX_1_160829_FR07888566_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888566";
      read = 1;
    }
    {
      md5 = "0ad44f10d145ba08418eb3b8302e0a2a";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H5753ALXX_1_160829_FR07888566_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888566";
      read = 2;
    }
    {
      md5 = "240976352d15913f5af2df730f7b9564";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H5753ALXX_3_160829_FR07888558_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888558";
      read = 1;
    }
    {
      md5 = "0f98da3cdf51942fd233afd04aed9e70";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H5753ALXX_3_160829_FR07888558_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888558";
      read = 2;
    }
    {
      md5 = "04d30753b2347282575888d61cb5672b";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H5753ALXX_4_160829_FR07888564_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888564";
      read = 1;
    }
    {
      md5 = "684b9a874fbc988422b0e6d24eb9e8ac";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H5753ALXX_4_160829_FR07888564_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888564";
      read = 2;
    }
    {
      md5 = "bcb0234aa3c55aa418c5c03a6bcb6217";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H5753ALXX_5_160829_FR07888565_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888565";
      read = 1;
    }
    {
      md5 = "2349677de346da6134823b19547d6048";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H5753ALXX_5_160829_FR07888565_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888565";
      read = 2;
    }
    {
      md5 = "724c86962fbfbd98d4095dc1da4591f4";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H5753ALXX_6_160829_FR07888567_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888567";
      read = 1;
    }
    {
      md5 = "c00293a4f60d32f44e3221eb9eea65bb";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H5753ALXX_6_160829_FR07888567_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888567";
      read = 2;
    }
    {
      md5 = "c0bab6e0e3b00be88de11a5d78505b69";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H5753ALXX_7_160829_FR07888572_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888572";
      read = 1;
    }
    {
      md5 = "ceb2e359bf26a3beda1b5adb39c56d52";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H5753ALXX_7_160829_FR07888572_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888572";
      read = 2;
    }
    {
      md5 = "591a65d6c4575bc5881f588fe43606f3";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H5753ALXX_8_160829_FR07888573_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888573";
      read = 1;
    }
    {
      md5 = "3b7f058872c55099313f8972a1eb6a6a";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/H5753ALXX_8_160829_FR07888573_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888573";
      read = 2;
    }
    {
      md5 = "e7522ce60252b87a180779e69c2935f7";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY3W5CCXX_5_160829_FR07888628_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888628";
      read = 1;
    }
    {
      md5 = "ee614ecc32edfccacc30ebf22c152c41";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY3W5CCXX_5_160829_FR07888628_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888628";
      read = 2;
    }
    {
      md5 = "b984e6b6ac4376cee93762bc0905fdb1";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY3W5CCXX_6_160829_FR07888629_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888629";
      read = 1;
    }
    {
      md5 = "64c69f6e7536b1b114b1fe7a331bc1b8";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY3W5CCXX_6_160829_FR07888629_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888629";
      read = 2;
    }
    {
      md5 = "b002e17cffc5da9fea6f1c8b1619e3e0";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_1_160829_FR07888574_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888574";
      read = 1;
    }
    {
      md5 = "5f784c29bad8a810e2962530eb9fbda0";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_1_160829_FR07888574_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888574";
      read = 2;
    }
    {
      md5 = "d769d512531676d601a870c1a4c8db1f";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_2_160829_FR07888575_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888575";
      read = 1;
    }
    {
      md5 = "b1eaf8668293a977243443802342607c";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_2_160829_FR07888575_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888575";
      read = 2;
    }
    {
      md5 = "7763764e93e9ac9aaaf1435914f55745";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_3_160829_FR07888581_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888581";
      read = 1;
    }
    {
      md5 = "6dbe413a31e554b5c85a16df215fb912";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_3_160829_FR07888581_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888581";
      read = 2;
    }
    {
      md5 = "c5420298807ea46b15b83d15633add0d";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_4_160829_FR07888582_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888582";
      read = 1;
    }
    {
      md5 = "5f663e432b11d913b97f25fe747065fe";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_4_160829_FR07888582_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888582";
      read = 2;
    }
    {
      md5 = "88e527d15661cf6202f67e800f3c10ef";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_5_160829_FR07888588_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888588";
      read = 1;
    }
    {
      md5 = "e2cf59aa99fd945d81cc47962dd59148";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_5_160829_FR07888588_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888588";
      read = 2;
    }
    {
      md5 = "dd665ba8c4ab7f4f36e361e7c581bdfb";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_6_160829_FR07888589_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888589";
      read = 1;
    }
    {
      md5 = "574033914f72bf7022561d374fb8c753";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_6_160829_FR07888589_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888589";
      read = 2;
    }
    {
      md5 = "0a1999532741b00626a2ae24bef20ac8";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_7_160829_FR07888590_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888590";
      read = 1;
    }
    {
      md5 = "9976fe9429df1ee08c30ed8fcf8bef45";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_7_160829_FR07888590_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888590";
      read = 2;
    }
    {
      md5 = "457ddf2600f05a540a6ea29af8f1b9e5";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_8_160829_FR07888596_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888596";
      read = 1;
    }
    {
      md5 = "fd2955c933f388844d82829f25805619";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY73LCCXX_8_160829_FR07888596_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888596";
      read = 2;
    }
    {
      md5 = "63031558a959fb566efbb61dfd770e53";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7G5CCXX_8_160829_FR07888540_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888540";
      read = 1;
    }
    {
      md5 = "b1776af8e6c32c21ebf8efa6995fcdfb";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7G5CCXX_8_160829_FR07888540_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888540";
      read = 2;
    }
    {
      md5 = "7e4be6884310c8edf7348bdc30ac7136";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7HCCCXX_2_160829_FR07888598_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888598";
      read = 1;
    }
    {
      md5 = "6e43211a8fd4000f32e6505113e2d6b5";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7HCCCXX_2_160829_FR07888598_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888598";
      read = 2;
    }
    {
      md5 = "c16be84c715ead3f5d488df6e0f0a8c9";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7HCCCXX_3_160829_FR07888604_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888604";
      read = 1;
    }
    {
      md5 = "09c858a4dbe322393778c615f91c26a6";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7HCCCXX_3_160829_FR07888604_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888604";
      read = 2;
    }
    {
      md5 = "46118a320cf81264da61fac48c2bba9a";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7HCCCXX_4_160829_FR07888613_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888613";
      read = 1;
    }
    {
      md5 = "e54fcd9480b5e56eec138470aeaaa35c";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7HCCCXX_4_160829_FR07888613_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888613";
      read = 2;
    }
    {
      md5 = "f70369c61be62f46b487766a66df1fcb";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7HCCCXX_5_160829_FR07888614_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888614";
      read = 1;
    }
    {
      md5 = "ebec620f9901c56df2169b607928bc17";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7HCCCXX_5_160829_FR07888614_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888614";
      read = 2;
    }
    {
      md5 = "52e69f974adfab34d7cf0e66e74fb978";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7HCCCXX_6_160829_FR07888620_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888620";
      read = 1;
    }
    {
      md5 = "28bee9df5f6bd60d0eebb162a92b46e4";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7HCCCXX_6_160829_FR07888620_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888620";
      read = 2;
    }
    {
      md5 = "6fa41bf8580a89229a861fd144bbcfa8";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7HCCCXX_7_160829_FR07888622_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888622";
      read = 1;
    }
    {
      md5 = "968d41c1d020ab0c2ec87d3cafac83aa";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7HCCCXX_7_160829_FR07888622_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888622";
      read = 2;
    }
    {
      md5 = "462f30d8715c22697589109fd769f045";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7HCCCXX_8_160829_FR07888627_Homo-sapiens__R_160830_OLGKON_DNA_M001_R1.fastq.gz";
      id = "FR07888627";
      read = 1;
    }
    {
      md5 = "c56a17c72558348b10f9cf1d7e9b87f7";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_oct/HY7HCCCXX_8_160829_FR07888627_Homo-sapiens__R_160830_OLGKON_DNA_M001_R2.fastq.gz";
      id = "FR07888627";
      read = 2;
    }
    {
      md5 = "1684f2c201ffbb78726aaf84a76ff23f";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H53Y3ALXX_1_161018_FR07888556_Homo-sapiens__R_160830_OLGKON_DNA_M002_R1.fastq.gz";
      id = "FR07888556";
      read = 1;
    }
    {
      md5 = "e5565c693edc59f1986c539f6c6a58d4";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H53Y3ALXX_1_161018_FR07888556_Homo-sapiens__R_160830_OLGKON_DNA_M002_R2.fastq.gz";
      id = "FR07888556";
      read = 2;
    }
    {
      md5 = "b4db73c4b1f2be6991235e6b3f9bc403";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H53Y3ALXX_3_161018_FR07888580_Homo-sapiens__R_160830_OLGKON_DNA_M002_R1.fastq.gz";
      id = "FR07888580";
      read = 1;
    }
    {
      md5 = "52a1adfdb61da704e28111544e3cc2de";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H53Y3ALXX_3_161018_FR07888580_Homo-sapiens__R_160830_OLGKON_DNA_M002_R2.fastq.gz";
      id = "FR07888580";
      read = 2;
    }
    {
      md5 = "64194bda12853340ac4343bbb0e3abc6";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H53Y3ALXX_4_161018_FR07888583_Homo-sapiens__R_160830_OLGKON_DNA_M002_R1.fastq.gz";
      id = "FR07888583";
      read = 1;
    }
    {
      md5 = "a78e30769e53a9d83a582e9dfd56ae33";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H53Y3ALXX_4_161018_FR07888583_Homo-sapiens__R_160830_OLGKON_DNA_M002_R2.fastq.gz";
      id = "FR07888583";
      read = 2;
    }
    {
      md5 = "9e12910590926affcef7bc8edf609f4b";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H53Y3ALXX_5_161018_FR07888605_Homo-sapiens__R_160830_OLGKON_DNA_M002_R1.fastq.gz";
      id = "FR07888605";
      read = 1;
    }
    {
      md5 = "2b63e3a3bc86a9954fa3b22b16220140";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H53Y3ALXX_5_161018_FR07888605_Homo-sapiens__R_160830_OLGKON_DNA_M002_R2.fastq.gz";
      id = "FR07888605";
      read = 2;
    }
    {
      md5 = "7bf76fa870bb35f7cd5ff32cfaa05167";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H53Y3ALXX_6_161018_FR07888606_Homo-sapiens__R_160830_OLGKON_DNA_M002_R1.fastq.gz";
      id = "FR07888606";
      read = 1;
    }
    {
      md5 = "e365e31071a289f06d6c40ad9f61e143";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H53Y3ALXX_6_161018_FR07888606_Homo-sapiens__R_160830_OLGKON_DNA_M002_R2.fastq.gz";
      id = "FR07888606";
      read = 2;
    }
    {
      md5 = "ab81911562b75f86fb7bd07d3ddc2e48";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H53Y3ALXX_7_161018_FR07888612_Homo-sapiens__R_160830_OLGKON_DNA_M002_R1.fastq.gz";
      id = "FR07888612";
      read = 1;
    }
    {
      md5 = "1b6a5e42d26e4b1c79370f53c147922a";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H53Y3ALXX_7_161018_FR07888612_Homo-sapiens__R_160830_OLGKON_DNA_M002_R2.fastq.gz";
      id = "FR07888612";
      read = 2;
    }
    {
      md5 = "8a436fcf73a21cd0ff92303f3efe22ae";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H552CALXX_1_161018_FR07888551_Homo-sapiens__R_160830_OLGKON_DNA_M002_R1.fastq.gz";
      id = "FR07888551";
      read = 1;
    }
    {
      md5 = "6fdfd2fd619b5c5367113c4b60d406e2";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H552CALXX_1_161018_FR07888551_Homo-sapiens__R_160830_OLGKON_DNA_M002_R2.fastq.gz";
      id = "FR07888551";
      read = 2;
    }
    {
      md5 = "0ef3272380a820376eb4bb612953ea9b";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H55VTALXX_1_161018_FR07888621_Homo-sapiens__R_160830_OLGKON_DNA_M002_R1.fastq.gz";
      id = "FR07888621";
      read = 1;
    }
    {
      md5 = "5cfca1d708a6f0ddcac65224f2c5bbc8";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H55VTALXX_1_161018_FR07888621_Homo-sapiens__R_160830_OLGKON_DNA_M002_R2.fastq.gz";
      id = "FR07888621";
      read = 2;
    }
    {
      md5 = "2c6f2dd050753a7cbe949b28830f02b2";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H55VTALXX_2_161018_FR07888630_Homo-sapiens__R_160830_OLGKON_DNA_M002_R1.fastq.gz";
      id = "FR07888630";
      read = 1;
    }
    {
      md5 = "9983f2eeec9c275677d7c7c7839ed8e1";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H55VTALXX_2_161018_FR07888630_Homo-sapiens__R_160830_OLGKON_DNA_M002_R2.fastq.gz";
      id = "FR07888630";
      read = 2;
    }
    {
      md5 = "34eae2411457209ee15aa21daff298fe";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H5CW3ALXX_2_161018_FR07888551_Homo-sapiens__R_160830_OLGKON_DNA_M002_R1.fastq.gz";
      id = "FR07888551";
      read = 1;
    }
    {
      md5 = "49bc620220acdbee5276e4673c21dcb3";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H5CW3ALXX_2_161018_FR07888551_Homo-sapiens__R_160830_OLGKON_DNA_M002_R2.fastq.gz";
      id = "FR07888551";
      read = 2;
    }
    {
      md5 = "fb9f7619e1855474910182f569b74e02";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H5F7NALXX_2_161018_FR07888559_Homo-sapiens__R_160830_OLGKON_DNA_M002_R1.fastq.gz";
      id = "FR07888559";
      read = 1;
    }
    {
      md5 = "d9f4489cac698e66224c767c94371390";
      url =
        "file:///wehisan/bioinf/bioinf-data/Papenfuss_lab/projects/ovary/wgs/fastq_2016_nov/H5F7NALXX_2_161018_FR07888559_Homo-sapiens__R_160830_OLGKON_DNA_M002_R2.fastq.gz";
      id = "FR07888559";
      read = 2;
    }
  ];
in mapAttrs (_: groupBy' (x: toString x.read)) (groupBy (x: x.id) meta)

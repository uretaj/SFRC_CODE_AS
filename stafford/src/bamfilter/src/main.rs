extern crate bam;
use std::io;
use bam::RecordWriter;

const Q_MIN: u8 = 16;
const Q_FRAC: f64 = 0.4;
const MAX_N: u32 = 5;

enum Cmp {
  LT,
  EQ,
}
use Cmp::*;

#[inline]
fn cmp(arr: &[u8], c: u8, ty: Cmp) -> u32 {
  let mut cnt = 0;
  for b in arr {
    if match ty {EQ => {*b == c} LT => {*b <= c}} {
      cnt += 1;
    }
  }
  return cnt as u32;
}

#[inline]
fn lq(q: &bam::record::sequence::Qualities) -> bool {
  return cmp(q.raw(), Q_MIN, LT) < (Q_FRAC * q.len() as f64) as u32;
}

#[inline]
fn maxn(s: &bam::record::sequence::Sequence) -> bool {
  return cmp(s.raw(), 14, EQ) < MAX_N;
}

fn main() {
  let input = io::BufReader::new(io::stdin());
  let reader = bam::BamReader::from_stream(input, (num_cpus::get() - 1) as u16).unwrap();
  let output = io::BufWriter::new(io::stdout());
  let mut writer = bam::BamWriter::from_stream(output, reader.header().clone()).unwrap();
  for record in reader {
    let r = record.unwrap();
    if lq(r.qualities()) && maxn(r.sequence()){
      writer.write(&r).unwrap();
    }
  }
}

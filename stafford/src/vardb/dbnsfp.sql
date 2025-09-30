create table if not exists muts(
  hmutid integer primary key autoincrement not null,
  chr text not null,
  pos integer not null,
  ref text not null,
  alt text not null,
  unique (chr, pos, ref, alt)
);

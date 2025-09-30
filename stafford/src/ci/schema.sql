PRAGMA temp_store = memory;
PRAGMA mmap_size = 30000000000;
PRAGMA page_size = 32768;

create table jobs(
  drv text primary key not null,
  out text not null,
  enqueued not null,
  updated not null,
  stateid integer not null,
  name not null,
  priority integer not null
);

create table logs(
  drv text primary key not null,
  log not null,
  foreign key (drv) references jobs(drv)
);

create table keys(
  publickey blob not null,
  owner text not null,
  primary key (publickey)
);

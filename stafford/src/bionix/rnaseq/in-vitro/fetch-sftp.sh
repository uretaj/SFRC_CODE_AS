source $stdenv/setup

cp $key key
chmod 600 key

echo fetching $path
/usr/bin/sftp -i key -P 2222 bedo.j@prkfs.wehi.edu.au:/stafford/lib/fastqs/$path $out

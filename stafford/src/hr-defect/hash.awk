BEGIN{
  FS="\t"
  for(i=0; i < 256; i++)
    ord[sprintf("%c", i)] = i
}

/^#/{next}
function hash(str, _acc) {
  _acc = 5381
  for(i=1; i <= length(str); i++)
    _acc = (lshift(_acc, 5) + _acc) + ord[substr(str,i,1)]
  return _acc
}

/1:0:0/ || /0:0:1/{
  d = $2 - lpos
  lpos = $2
  cnt[hash($4 $5 lpos)%1000]++
}

END{
  for(i = 0; i < 1000; i++)
    printf("%s%s", i == 0 ? "": " ", cnt[i]+0)
  printf("\n")
}

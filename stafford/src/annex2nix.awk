/^file:/{
  split($2, a, "_R")
  split(a[2], b, "_")
  split(b[2], c, ".")
  prefix = a[1]
  pair = b[1]
  suffix = c[1]
}
/^key:/{
  split($2, a, /[-\.]/)
  key = a[4]
  keys[prefix,suffix][pair]=key
}
END{
  ORS=""
  for(i in keys){
    split(i,arr,SUBSEP)
    print "{prefix=\""arr[1]"\";suffix=\"_"arr[2]"\";"
    for(j in keys[i])
    	print"sha256-"j"=\""keys[i][j]"\";"
    print"}\n"
    }
  }

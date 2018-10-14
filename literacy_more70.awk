#! /usr/bin/awk

BEGIN{
  FS="|"
  count=0
};
($10 > 70){
  count++
};
END{
  print "There are "count" no. of countries with literacy > 70%"
};

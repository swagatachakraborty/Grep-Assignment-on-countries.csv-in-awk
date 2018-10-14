#! /usr/bin/awk

BEGIN{
  FS="|"
  count=0
};
($9 > 30000){
  count++
};
END{
  print "THere are " count" no of countries with GDP > 30000"
};


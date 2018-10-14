#! /usr/bin/awk

BEGIN{
  FS="|"
  count=0;
};
($2 ~ "ASIA"){ 
  count++
};
END {
  print "There are "count" number of countries in ASIA"
}


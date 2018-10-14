#! /usr/bin/awk
BEGIN{
  FS="|"
  count=0
  };
  ($9 > 20000 && $10 < 90){
    count++
  };
  END{
    print "There are " count" no of countries with GDP>20000% and linteracy<90%"};

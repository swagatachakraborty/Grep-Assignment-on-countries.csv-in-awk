#! /usr/bin/awk

BEGIN{
  FS="|"
  max_country=""
  max_rate=0
};
($9>20000 && $8>max_rate){
  max_rate=$8
  max_country=$1
};
END{
  print max_country" has the highest infant mortality rate of "max_rate" among all who has GDP > 20000"
};

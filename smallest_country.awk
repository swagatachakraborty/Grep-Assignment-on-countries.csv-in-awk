#! /usr/bin/awk

BEGIN{
  FS="|"
  country=""
  area=0
};
($4<area||country==""){
  area=$4
  country=$1
};
END{
  print "The smallest country of the world is "country" with population of "area" sq. mi."
};

#! /usr/bin/awk

BEGIN{
  FS="|"
  country=""
  population=0
};
($3<population || country==""){
  population=$3
  country=$1
};
END{
  print "The lest popupous country of the world is "country" with population of "population
};

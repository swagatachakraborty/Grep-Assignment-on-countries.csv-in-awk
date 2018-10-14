#! /usr/bin/awk

BEGIN {
  FS="|"
  country=""
  area=0
};
($4>area){
  area=$4
  country=$1
};
END{
  print country" is the largest country in the world with area of "area};

#! /usr/bin/awk

BEGIN {
  FS="|"
  country=""
  population=0
};
($3>population){
  population=$3
  country=$1
};
END{
  print country" is the most populous country in the world with population of "population};

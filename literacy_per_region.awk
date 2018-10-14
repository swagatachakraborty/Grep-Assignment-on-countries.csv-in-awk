#! /usr/bin/awk

BEGIN{
  FS="|"
};
{
  literacy[$2]=($10*$3)+literacy[$2]
  population[$2]+=$3
};
END{
 for(region in literacy){
  print region ":" literacy[region]/population[region]
  }
};

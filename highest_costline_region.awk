#! /usr/bin/awk

BEGIN{
  FS="|"
  max_cost=0
  max=""
};
{
  total_costline[$2]+=$6*$4
};
END{
 for(region in total_costline){
  if(total_costline[region]>max_cost)
  { max_cost=total_costline[region]
    max=region
  }
 }
 print max" has maximum costline of "total_costline[max]
};

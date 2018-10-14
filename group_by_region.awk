#! /usr/bin/awk

BEGIN{
  FS="|"
};
{
  group[$2]=$1", "group[$2]
};
END{
 for(region in group){
  print region ":"
  print group[region]
  }
};

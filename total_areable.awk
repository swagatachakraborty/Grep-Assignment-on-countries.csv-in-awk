#! /usr/bin/awk
BEGIN{
  FS="|"
  area=0
  arable=0
};
{
  area+=$4
  areable+=($12*$4)/100
};
END{
  areable_percentage=areable/area*100
  print "Total percentage of land that is areable is "areable_percentage
};


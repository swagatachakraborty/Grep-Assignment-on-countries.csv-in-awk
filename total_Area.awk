#! /usr/bin/awk
 BEGIN{
   FS="|"
   total_area=0;
 };
 {
   total_area+=$4
 };
 END{
   print "Total area of all the countries in the world is : "total_area};


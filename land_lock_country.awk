#! /usr/bin/awk
 BEGIN{
   FS="|"
   n=1
 };
 
 ($6 == 0.0){
   print n". "$1
  n++  
};


#! /usr/bin/awk
BEGIN{
  FS="|"
  i=0 
  j=0
  k=0
};
($5<=100){
  group_le100[i]=$1
  i++
};
  ($5>100 && $5<=300){
  group_101to300[j]=$1
  j++
};
($5>300){
  group_gt300[k]=$1
  k++
};
END{
  print "Countries population density upto 100 are : \n" 
  for(l=0;l<i;l++) {
    print group_le100[l]}
  print "\nCountries population density 101 to 300 are : \n" 
  for(l=0;l<j;l++){
    print group_101to300[l]} 
  print "\nCountries population density greater than 300 are :\n" 
  for(l=0;l<k;l++){
    print group_gt300[l] }
};

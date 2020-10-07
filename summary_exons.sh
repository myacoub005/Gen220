#!/usr/bin/bash
if [ ! -f rice_random_exons.bed ]; then  
  curl -O https://raw.githubusercontent.com/biodataprog/GEN220/master/data/rice_random_exons.bed
 fi
 
 Total=0
 awk '{print $3 - $2}' rice_random_exons.bed > exon_lengths.txt
 while read LENGTH
 do 
  Total=$(expr $TOTAL + $LENGTH)
 done < exon_lengths.txt
 
 echo #TOTAL

#!/usr/bin/bash
curl -O https://ftp.ncbi.nlm.nih.gov/pub/UniVec/UniVec_Core #downloads the file

grep -c ">" UniVec_Core #counts how many times ">" appears in file. 


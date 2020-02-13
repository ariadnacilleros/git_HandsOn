#!/bin/bash
seq=$1
seq=$(echo $seq | tr a-z A-Z)  # Note we just added this line
if [[ $seq =~ ^[ACGTU]+$ ]]; then #make all nucleotides upper
  if [[ $seq =~ T ]]; then #if the seq contains T is DNA
    echo "The sequence is DNA"
  elif [[ $seq =~ U ]]; then #if the seq contains U is RNA
    echo "The sequence is RNA"
  else
    echo "The sequence can be DNA or RNA" #if the seq doesn-t contain U or T, it could be DNA or RNA
  fi
else
  echo "The sequence is not DNA nor RNA" #if the seq not contains A, C, G, T or U, it is not a RNA or DNA sequence 
fi

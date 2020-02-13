#!/bin/bash
motif=$(echo $2 | tr a-z A-Z)
if [[ -n $motif ]]; then
  echo -en "Motif search enabled: looking for motif '$motif' in sequence '$seq'... "
  if [[ $seq =~ $motif ]]; then
    echo "FOUND"
  else
    echo "NOT FOUND"
  fi
fi

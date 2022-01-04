#!/bin/bash                                                                                                                                                                                                 

cd /Users/yudiz-jay/Downloads
for filename in *; do
  if [[ -f "$filename" ]]; then
      base=${filename%.*}
      ext=${filename#$base.}
    mkdir -p "${ext}"
    mv "$filename" "${ext}"
  fi
done

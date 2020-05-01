#!/bin/bash

for x in *.mov; do
  h265ize -v -m medium -q 20 -x --no-sao --aq-mode 3 "$x"
  # exiftool -overwrite_original -tagsFromFile "$x" -all:all "${x%}.HEVC";
  # exiftool -overwrite_original -tagsFromFile "${x%}.XMP" -all:all "${x%}.HEIC";
done

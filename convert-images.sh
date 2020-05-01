#!/bin/bash
for x in *.jpeg; do
  # magick "$x" "${x%.jpeg}.HEIC";
  sips -s format heic -s formatOptions 85 "$x" --out "$x.HEIC"
  exiftool -overwrite_original -tagsFromFile "$x" -all:all "${x%}.HEIC";
  exiftool -overwrite_original -tagsFromFile "${x%}.XMP" -all:all "${x%}.HEIC";
done

rm -rf *.jpeg

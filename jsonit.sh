#! /bin/bash

filename=`basename $1 .csv`

#{"term": "", "altterm": "", "pronunciation": "", "definition": "", "pos": "", "examples": "", "audio": ""}, {"term": "", "altterm": "", "pronunciation": "", "definition": "to separate", "pos": "", "examples": "", "audio": ""}

awk -F\| ' BEGIN { print "[" } { print "{\"term\" : \"",$1,"\", \"altterm\": \"\", \"pronunciation\": \"\", \"definition\" : \"",$2,"\", \"pos\": \"\", \"examples\": \"\", \"audio\": \"\"}," } END { print "]" } ' ${filename}.csv > ${filename}.json

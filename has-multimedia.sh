#!/bin/bash
#
# returns 0 when content is dwca and has preston cat --data-dir /media/jorrit/tamias/preston/preston-archive/data 'zip:hash://sha256/654f4dff5b7b857e6174f

source env.sh

preston cat --data-dir "${DATA_DIR}" "zip:$1!/meta.xml"\
 | grep -E "[Aa]ccessURI|http://rs.gbif.org/terms/1.0/Multimedia"\
 > /dev/null

 if [ $? -eq 0 ] 
 then
   echo $1
 fi 

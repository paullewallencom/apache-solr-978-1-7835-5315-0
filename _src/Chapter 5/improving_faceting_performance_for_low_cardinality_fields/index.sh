#!/bin/sh
URL=http://localhost:8983/solr/cookbook/update/

for i in {1..2000000}
do
  if [ $(( $i % 2 )) -eq 0 ]; then
    curl $URL --data-binary "<add><doc><field name=\"id\">$i</field><field name=\"tag\">tag1</field></doc></add>" -H 'Content-type:application/xml' 
  else
    curl $URL --data-binary "<add><doc><field name=\"id\">$i</field><field name=\"tag\">tag2</field></doc></add>" -H 'Content-type:application/xml' 
  fi  
done

curl $URL --data-binary '<commit/>' -H 'Content-type:application/xml'
echo

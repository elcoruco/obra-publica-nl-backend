#!/bin/bash
# carga los proyectos de data
mongo nl --eval "db.dropDatabase()"

for file in ./data/nl-oc4ids/*.json; do
  mongoimport -d nl -c oc4ids $file
done

for file in ./data/nl-releases/*.json; do
  mongoimport -d nl -c ocds $file
done
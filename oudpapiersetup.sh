#!/bin/sh

mkdir oudpapier
cd oudpapier
wget -O- https://get.pharo.org/64 | bash
./pharo Pharo.image save oudpapier
./pharo oudpapier.image config http://185.14.187.114:1701 ConfigurationOfGeoOudPapier --install=development --username=geo --password=geo
echo "StartupPreferencesLoader default executeAtomicItems: {
StartupAction
 name: 'Startup OudPapier'
 code: [| oudpapier |
   oudpapier := GeoOudPapierWebsite new.
   oudpapier start.
   Transcript print: oudpapier]
 runOnce: false
}" > startup.st
./pharo oudpapier.image startup.st


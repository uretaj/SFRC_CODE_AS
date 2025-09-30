#!/bin/sh

set -eo pipefail

if [ ! "$#" -eq 1 ] ; then
    echo "usage: mark-mp-neoantigens.sh api-token"
    echo "nb: must be run in src/bionix"
    exit 1
fi

DATA="token=$1&content=record&action=export&format=json&type=flat&csvDelimiter=&fields[0]=record_id&rawOrLabel=raw&rawOrLabelHeaders=raw&exportCheckboxLabel=false&exportSurveyFields=false&exportDataAccessGroups=false&returnFormat=json"
curl -H "Content-Type: application/x-www-form-urlencoded" \
      -H "Accept: application/json" \
      -X POST \
      -d $DATA \
      https://redcap.wehi.edu.au/api/ | \
  jq -r '.[]|.record_id' | \
  grep '^SFRC' | \
  tr '[A-Z]' '[a-z]' | \
  awk '{print $0 ".nix"}' | \
  comm -23 - <(grep -l predictNeoantigens sfrc*.nix) | \
  xargs sed -i '$ipredictNeoantigens = true;'

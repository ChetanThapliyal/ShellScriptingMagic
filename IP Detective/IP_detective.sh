#!/usr/bin/env bash

if ! command -v jq &> /dev/null; then
  echo 'Error: jq is not installed. Install via https://stedolan.github.io/jq/download/'
  exit 1
fi

if [[ $# -ne 1 ]]; then
  echo 'Provide I.P as a command line parameter. Usage:  ' $0 ' 15.45.0.1 '
  exit 1
fi

link="http://ip-api.com/json/$1"
data=$(curl -s $link)

if jq -e '.status == "success"' <<< "$data" &> /dev/null; then
  jq -r '.city, .regionName, "in", .country' <<< "$data"
else
  echo "IP location not found."
fi

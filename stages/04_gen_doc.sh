#!/usr/bin/env bash

echo
echo "Generating documentation"

application_type=$(jq -r .application.type pipeline.json)

case "${application_type}" in
  "ruby_gem")
   yard doc
   ;;
  *)
    echo "Unable to build application type ${application_type}"
    exit 1
    ;;
esac



#!/usr/bin/env bash

echo
echo "Building Application"

application_type=$(jq -r .application.type pipeline.json)
application_main_resource=$(jq -r .application.main_resource pipeline.json)

case "${application_type}" in
  "ruby_gem")
   bundle install
   gem build ${application_main_resource}
   ;;
  "java")
    mvn clean package
    ;;
  "netcore")
    dotnet restore
    dotnet build -c Release
    ;;
  "node")
    npm install
    ;;
  *)
    echo "Unable to build application type ${application_type}"
    exit 1
    ;;
esac

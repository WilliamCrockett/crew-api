#!/bin/bash

curl "http://localhost:4741/crews" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo

# TOKEN="BAhJIiVmZDljZDYyNjBkMGQzOTkxMWFlNDQ1NmIwMDRhYWFmOAY6BkVG--2ff68843093aeb4f51bb134c8fe939166c783a15" sh scripts/crews/get-crews.sh

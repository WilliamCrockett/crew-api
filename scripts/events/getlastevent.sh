#!/bin/bash

curl "http://localhost:4741/get-last" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo

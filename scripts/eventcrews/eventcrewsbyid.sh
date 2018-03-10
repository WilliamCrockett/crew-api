#!/bin/bash

curl "http://localhost:4741/event_crews/100" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo

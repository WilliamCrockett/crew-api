#!/bin/bash

curl "http://localhost:4741/crews?event_id=100" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo

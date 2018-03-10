#!/bin/bash

curl "http://localhost:4741/event_crews" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "event_crew": {
      "event_id": "'"${EID}"'",
      "crew_id": "'"${CID}"'"
    }
  }'

echo

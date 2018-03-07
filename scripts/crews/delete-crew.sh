#!/bin/bash

curl "http://localhost:4741/crews/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo

# ID="1" TOKEN="BAhJIiVjZjI5OGE2ODc2MWU4MGM4YWI5YTk2ODM4OTM0YTA5OQY6BkVG--54ae2c48d9a57f1053748d7e47678b8e3a74d5ae"

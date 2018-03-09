#!/bin/bash

curl "http://localhost:4741/crews" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo

# TOKEN="BAhJIiVlMzFhMzA4ZWE2NmUzYTg4NTM1MWVjOGEwMTk2NGRjNAY6BkVG--baefdb1382cd0485b416a778ed807ec1c68ac413" sh scripts/crews/get-crews.sh

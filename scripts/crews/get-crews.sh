#!/bin/bash

curl "http://localhost:4741/crews" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo

# TOKEN="BAhJIiU0NDIwNzJjMjJhNTkzYzFmYjQwZjRiOWI0ZDNlMmI0NgY6BkVG--abe630c6428073d5dbe5b1c2d5b9117163611b8d" sh scripts/crews/get-crews.sh

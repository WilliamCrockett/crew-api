#!/bin/bash

curl "http://localhost:4741/crews/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo

# ID="1" TOKEN="BAhJIiU0NDIwNzJjMjJhNTkzYzFmYjQwZjRiOWI0ZDNlMmI0NgY6BkVG--abe630c6428073d5dbe5b1c2d5b9117163611b8d"

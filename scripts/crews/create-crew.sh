#!/bin/bash

curl "http://localhost:4741/crews" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "crew": {
      "full_name": "'"${FULL_NAME}"'",
      "sas_number": "'"${SAS_NUMBER}"'",
      "email_address": "'"${EMAIL_ADDRESS}"'",
      "cell_number": "'"${CELL_NUMBER}"'",
      "next_of_kin": "'"${NEXT_OF_KIN}"'",
      "nok_cell_num": "'"${NOK_CELL_NUM}"'",
      "shirt_size": "'"${SHIRT_SIZE}"'"
    }
  }'

echo

# TOKEN="BAhJIiUxNGYwM2Q1NDhlMzJmOGU2OGQ4NzIzZWUyZTQxYWU2ZgY6BkVG--7aba77b22140a9baa74bd153d077babed580349a" FULL_NAME="Bob Martin" SAS_NUMBER="SAS002" CELL_NUMBER="0831234567" NEXT_OF_KIN="Pa" NOK_CELL_NUM="1234567890" SHIRT_SIZE="Large"
# TOKEN="BAhJIiU0NDIwNzJjMjJhNTkzYzFmYjQwZjRiOWI0ZDNlMmI0NgY6BkVG--abe630c6428073d5dbe5b1c2d5b9117163611b8d" FULL_NAME="Georgy Boy" SAS_NUMBER="SAS003" CELL_NUMBER="0831234567" NEXT_OF_KIN="Pa" NOK_CELL_NUM="1234567890" SHIRT_SIZE="Large"

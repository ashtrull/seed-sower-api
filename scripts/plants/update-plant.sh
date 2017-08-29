#!/bin/bash

# API="${API_ORIGIN:-http://localhost:4741}"
API="${API_ORIGIN:-https://git.heroku.com/seedsower.git}"
URL_PATH="/plants/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "plant": {
      "name": "'"${NAME}"'",
      "indoor_start": "'"${ISTART}"'",
      "growth_period": "'"${GROWTH}"'",
      "outdoor_start": "'"${OSTART}"'"
    }
  }'

echo

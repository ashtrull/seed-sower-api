#!/bin/bash
# API="${API_ORIGIN:-http://localhost:4741}"
API="${API_ORIGIN:-https://seedsower.herokuapp.com}"
URL_PATH="/plants"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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

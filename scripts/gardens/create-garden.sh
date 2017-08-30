#!/bin/bash
#API="${API_ORIGIN:-http://localhost:4741}"
API="${API_ORIGIN:-https://seedsower.herokuapp.com}"
URL_PATH="/gardens"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "garden": {
      "user_id": "'"${USERID}"'",
      "plant_id": "'"${PLANTID}"'"
    }
  }'

echo

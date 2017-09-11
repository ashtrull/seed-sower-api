#!/bin/bash

# API="${API_ORIGIN:-http://localhost:4741}"
API="${API_ORIGIN:-https://seedsower.herokuapp.com}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PW}"'",
      "password_confirmation": "'"${PW}"'"
    }
  }'

echo

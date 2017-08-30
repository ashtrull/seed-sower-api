#!/bin/bash

# API="${API_ORIGIN:-http://localhost:4741}"
API="${API_ORIGIN:-https://seedsower.herokuapp.com}"
URL_PATH="/users"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo

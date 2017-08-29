#!/bin/bash

# API="${API_ORIGIN:-http://localhost:4741}"
API="${API_ORIGIN:-https://git.heroku.com/seedsower.git}"
URL_PATH="/plants/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN" \

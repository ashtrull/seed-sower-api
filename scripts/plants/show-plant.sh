API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/plants/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

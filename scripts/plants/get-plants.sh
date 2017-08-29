# API="${API_ORIGIN:-http://localhost:4741}"
API="${API_ORIGIN:-https://git.heroku.com/seedsower.git}"
URL_PATH="/plants"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo

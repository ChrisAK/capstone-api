#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/teams"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "team": {
      "name": "'"${NAME}"'",
      "user_id": "'"${USER}"'"
    }
  }'

echo

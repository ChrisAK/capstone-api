#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/pokemon_teams"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "pokemon_team": {
      "team_id": "'"${TEAM}"'",
      "pokemon_id": "'"${POKEMON1}"'"
    }
  }'
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --data '{
      "pokemon_team": {
        "team_id": "'"${TEAM}"'",
        "pokemon_id": "'"${POKEMON2}"'"
      }
    }'
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --data '{
      "pokemon_team": {
        "team_id": "'"${TEAM}"'",
        "pokemon_id": "'"${POKEMON3}"'"
      }
    }'
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --data '{
      "pokemon_team": {
        "team_id": "'"${TEAM}"'",
        "pokemon_id": "'"${POKEMON4}"'"
      }
    }'
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --data '{
      "pokemon_team": {
        "team_id": "'"${TEAM}"'",
        "pokemon_id": "'"${POKEMON5}"'"
      }
    }'
  curl "${API}${URL_PATH}" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --data '{
      "pokemon_team": {
        "team_id": "'"${TEAM}"'",
        "pokemon_id": "'"${POKEMON6}"'"
      }
    }'
echo

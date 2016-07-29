//these all work


curl --include --request POST http://localhost:3000/matches \
  --header "Authorization: Token token=DHqF30sfTKKrPYHWmH+enQpb9GI00Pe8fKL5MFKX8dU=--A6sScVXdhrTX4Eh+JxWede3OfzeXouSfXCcud6/vIMQ=" \
  --header "Content-Type: application/json" \
  --data '{
    "match": {
      "time": "5pm",
      "opponent": "James Pearse"
    }
  }'

  curl --include --request POST http://localhost:3000/matches \
    --header "Authorization: Token token=DHqF30sfTKKrPYHWmH+enQpb9GI00Pe8fKL5MFKX8dU=--A6sScVXdhrTX4Eh+JxWede3OfzeXouSfXCcud6/vIMQ=" \
    --header "Content-Type: application/json" \
    --data '{
      "match": {
        "time": "5pm",
        "opponent": "Mike"
      }
    }'

  curl --include --request GET http://localhost:3000/matches \
  --header "Authorization: Token token=DHqF30sfTKKrPYHWmH+enQpb9GI00Pe8fKL5MFKX8dU=--A6sScVXdhrTX4Eh+JxWede3OfzeXouSfXCcud6/vIMQ="



  curl --include --request PATCH http://localhost:3000/matches/579bb422c335f7d184e98ef6 \
  --header "Authorization: Token token=DHqF30sfTKKrPYHWmH+enQpb9GI00Pe8fKL5MFKX8dU=--A6sScVXdhrTX4Eh+JxWede3OfzeXouSfXCcud6/vIMQ=" \
  --header "Content-Type: application/json" \
  --data '{
    "match": {
      "time": "5pm",
      "opponent": "Kristen Pearse"
    }
  }'


  curl --include --request DELETE http://localhost:3000/matches/579bad8dc335f7d184e98ef3 \
--header "Authorization: Token token=DHqF30sfTKKrPYHWmH+enQpb9GI00Pe8fKL5MFKX8dU=--A6sScVXdhrTX4Eh+JxWede3OfzeXouSfXCcud6/vIMQ=" \
--header "Content-Type: application/json"


curl --include --request GET http://localhost:3000/owner_matches/579b9e49fca688b6801f57d6 \
--header "Authorization: Token token=DHqF30sfTKKrPYHWmH+enQpb9GI00Pe8fKL5MFKX8dU=--A6sScVXdhrTX4Eh+JxWede3OfzeXouSfXCcud6/vIMQ="

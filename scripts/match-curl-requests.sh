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
    --header "Authorization: Token token=TKCkbdBKxM3sOBpvK7ZAJ8pY7jEEuEyRHPeKe7xpGEs=--GVwMs/25D8ZCPr0u0ymannE7l4rFfcXfJjYr3eE9AAs=" \
    --header "Content-Type: application/json" \
    --data '{
      "match": {
        "time": "5pm",
        "opponent": ""
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
      "opponent": ""
    }
  }'


  curl --include --request DELETE http://localhost:3000/matches/579bad8dc335f7d184e98ef3 \
--header "Authorization: Token token=DHqF30sfTKKrPYHWmH+enQpb9GI00Pe8fKL5MFKX8dU=--A6sScVXdhrTX4Eh+JxWede3OfzeXouSfXCcud6/vIMQ=" \
--header "Content-Type: application/json"


curl --include --request GET http://localhost:3000/owner_matches/579ce0c5666571748d67cfc8 \
--header "Authorization: Token token=trp2lRxxyTldIfJUAH7EvqTx/ac6F6jOlFLkrfbF/is=--y2I5PlP3VFd/HxsDYCCVg4qhSZgWT8xKcZzrW9v6PlI="


///////////////////////////////////////////////////

patching a match that is not not user owned

curl --include --request PATCH http://localhost:3000/matches-update/579bb422c335f7d184e98ef6 \
--header "Authorization: Token token=b5KFad973mbJ/+IlJFS9lnDN72ok2EZ/HhiPnwIVatE=--MIEFoSz4VC5oZ4BiSmtXNi+2AIZVVCoFjy+a7kbT3k0=" \
--header "Content-Type: application/json" \
--data '{
  "match": {
    "time": "10pm",
    "opponent": "This is the patch match by opponent user"
  }
}'

curl --include --request PATCH http://localhost:3000/matches-update/579d2a6a21e67b0a94284e6f \
--header "Content-Type: application/json" \
--data '{
  "match": {
    "time": "10pm",
    "opponent": "Second time should not patch"
  }
}'


b5KFad973mbJ/+IlJFS9lnDN72ok2EZ/HhiPnwIVatE=--MIEFoSz4VC5oZ4BiSmtXNi+2AIZVVCoFjy+a7kbT3k0=

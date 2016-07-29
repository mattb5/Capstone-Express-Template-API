#!/bin/bash

curl --include --request PATCH http://localhost:3000/change-password/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "an example password",
      "new": "super sekrit"
    }
  }'


  curl --include --request PATCH http://localhost:3000/change-password/579b9e49fca688b6801f57d6 \
    --header "Authorization: Token token=DHqF30sfTKKrPYHWmH+enQpb9GI00Pe8fKL5MFKX8dU=--A6sScVXdhrTX4Eh+JxWede3OfzeXouSfXCcud6/vIMQ=" \
    --header "Content-Type: application/json" \
    --data '{
      "passwords": {
        "old": "bambi",
        "new": "bam"
      }
    }'

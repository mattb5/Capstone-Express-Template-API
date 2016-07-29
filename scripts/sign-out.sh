#!/bin/bash

curl --include --request DELETE http://localhost:3000/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"

/////////////////////////////

curl --include --request DELETE http://localhost:3000/sign-out/579b9e49fca688b6801f57d6 \
  --header "Authorization: Token token=DHqF30sfTKKrPYHWmH+enQpb9GI00Pe8fKL5MFKX8dU=--A6sScVXdhrTX4Eh+JxWede3OfzeXouSfXCcud6/vIMQ="

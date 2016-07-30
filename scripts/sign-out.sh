#!/bin/bash

curl --include --request DELETE http://localhost:3000/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"

/////////////////////////////

curl --include --request DELETE http://localhost:3000/sign-out/579ce0c5666571748d67cfc8 \
  --header "Authorization: Token token=oWx8zZMQLVCdq08Wrdwi2HQMsKvGUaWHlDBjxYSOjmE=--9Y30H1kwkcKDsTYZm6yZLp1pLncV2jhurC6iJu3b5Hs="

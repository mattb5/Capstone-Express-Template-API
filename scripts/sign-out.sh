#!/bin/bash

curl --include --request DELETE http://localhost:3000/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"

/////////////////////////////

curl --include --request DELETE http://localhost:3000/sign-out/579ce0c5666571748d67cfc8 \
  --header "Authorization: Token token=trp2lRxxyTldIfJUAH7EvqTx/ac6F6jOlFLkrfbF/is=--y2I5PlP3VFd/HxsDYCCVg4qhSZgWT8xKcZzrW9v6PlI="

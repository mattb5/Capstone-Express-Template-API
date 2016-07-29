#!/bin/bash

curl --include --request DELETE http://localhost:3000/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"

/////////////////////////////

curl --include --request DELETE http://localhost:3000/sign-out/579b9e49fca688b6801f57d6 \
  --header "Authorization: Token token=/B7ILoKW1pwnHtbCXPezCaIoVVxfE0JSpvtqnWPs+/0=--SN0KCc0hFNyCCa9DoRxIi/DWb8IyJskTAbNeaPCu2A8="

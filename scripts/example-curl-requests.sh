curl --include --request POST http://localhost:3000/examples \
  --header "Authorization: Token token=DHqF30sfTKKrPYHWmH+enQpb9GI00Pe8fKL5MFKX8dU=--A6sScVXdhrTX4Eh+JxWede3OfzeXouSfXCcud6/vIMQ=" \
  --header "Content-Type: application/json" \
  --data '{
    "example": {
      "text": "Test Example 1"
    }
  }'




  curl --include --request GET http://localhost:3000/examples \
  --header "Authorization: Token token=DHqF30sfTKKrPYHWmH+enQpb9GI00Pe8fKL5MFKX8dU=--A6sScVXdhrTX4Eh+JxWede3OfzeXouSfXCcud6/vIMQ="

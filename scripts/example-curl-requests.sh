curl --include --request POST http://localhost:3000/examples \
  --header "Authorization: Token token=aq6oFkEYCwmd6Ixno6rs8NsZYAvv7vJiZH8qSaKE01I=--cPytVSBP8C3lnHeC8+aFkPa6/hFyXG1c1rCLNMyLjz4=" \
  --header "Content-Type: application/json" \
  --data '{
    "example": {
      "text": "Test Example 1"
    }
  }'




  curl --include --request GET http://localhost:3000/examples \
  --header "Authorization: Token token=DHqF30sfTKKrPYHWmH+enQpb9GI00Pe8fKL5MFKX8dU=--A6sScVXdhrTX4Eh+JxWede3OfzeXouSfXCcud6/vIMQ="

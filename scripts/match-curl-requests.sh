//these all work

//////////// POSTS A NEW MATCH
  curl --include --request POST http://localhost:3000/matches \
    --header "Authorization: Token token=JeB0ffrgGuzhHo8Sie3Vpzzhjq2J36xwYXXSmJ14JXQ=--DHP5gUOUjTL/0LW4B8TcWu/jBOuaUVg/Qvx/YehpCuw=" \
    --header "Content-Type: application/json" \
    --data '{
      "match": {
        "time": "5pm",
        "hostUser": "Matt buffardi",
        "opponent": ""
      }
    }'


//////////// Gets all matches
  curl --include --request GET http://localhost:3000/matches \
  --header "Authorization: Token token=DHqF30sfTKKrPYHWmH+enQpb9GI00Pe8fKL5MFKX8dU=--A6sScVXdhrTX4Eh+JxWede3OfzeXouSfXCcud6/vIMQ="


////////////////
curl --include --request PATCH http://localhost:3000/matches/579febc1b9c8823fadeb4e40 \
--header "Authorization: Token token=jpQXyvipqCoGbWpTXkwNdnr4UqqF1rPL0BZksJt+NUw=--hASsK0hvQ1FwhixuF471h/tglFrlQ2PePqazOE2CPtc=" \
--header "Content-Type: application/json" \
--data '{
  "match": {
    "time": "5pm",
    "opponent": ""
  }
}'

////////////////
  curl --include --request DELETE http://localhost:3000/matches/579bad8dc335f7d184e98ef3 \
--header "Authorization: Token token=DHqF30sfTKKrPYHWmH+enQpb9GI00Pe8fKL5MFKX8dU=--A6sScVXdhrTX4Eh+JxWede3OfzeXouSfXCcud6/vIMQ=" \
--header "Content-Type: application/json"

////////////////
curl --include --request GET http://localhost:3000/owner_matches/579ce0c5666571748d67cfc8 \
--header "Authorization: Token token=trp2lRxxyTldIfJUAH7EvqTx/ac6F6jOlFLkrfbF/is=--y2I5PlP3VFd/HxsDYCCVg4qhSZgWT8xKcZzrW9v6PlI="

////////////////
curl --include --request GET http://localhost:3000/opponent_matches/579f59892bd5b056a254ba68 \
--header "Authorization: Token token=SCMqaFTpIaO68YE/ChD0tayHIjbJBRXfG0h8cYcvfDg=--dKi8mkHA4HuY4NdkoEx7S02lJyeVrj9Lozt29WqrcfU="


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
/////////////////////////////////////////////////
curl --include --request PATCH http://localhost:3000/matches-update/579d2a6a21e67b0a94284e6f \
--header "Content-Type: application/json" \
--data '{
  "match": {
    "time": "10pm",
    "opponent": "Second time should not patch"
  }
}'
//////////////////////////////////////////////////

curl --include --request GET http://localhost:3000/opponent_matches/579f78d8d4349e08a76d28a6 \
--header "Authorization: Token token=GzdntZB0yHoHO0oxDf6RGYfUv90EF4iha6hk1FE90A8=--9J34Ldl3Eht1YBxv6eWUHlghE5BsgoEMVHic5pCEnvM="

////////////////////////////////////////////


curl --include --request PATCH http://localhost:3000/update-remove-opponent/579f6f8ed4349e08a76d28a3 \
--header "Authorization: Token token=aNuKLM8HT3nNLdchbQUbJWCnUFN/FCO6mxUcdPWcyvI=--86Ida0+0AS61riUlaVd1uoNcn9eljsITvirk8414ZZM=" \
--header "Content-Type: application/json" \
--data '{
  "match": {
    "opponent": "",
    "opponentID": ""
  }
}'
///////////////////////////////////////////////////

curl --include --request DELETE http://localhost:3000/matches/579feefeb9c8823fadeb4e41 \
--header "Authorization: Token token=Fr0kqmNYh8FjKkngQY7Acd9vjnt+Y6NHuyyTo6ajKYQ=--lKb1f3yb70XO6DVD/R1WHtqrbirVapH8M8SBiu0T03E=" \
--header "Content-Type: application/json"

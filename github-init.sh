#! /bin/bash
NAME=$1
DESCRIPTION=${2:-none}
out=$(curl -u "$NAME" -d '{"scopes":["repo"],"note":"Help example"}' https://api.github.com/authorizations)
token=$(echo "$out" | (grep -o '[0-9a-zA-Z]\{40\}'))

curl -XPOST  https://api.github.com/user/repos?access_token=$token -d '{
    "name" : "'${PWD##*/}'",
    "description" : "'$DESCRIPTION'"
}'

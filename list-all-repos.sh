#!/usr/bin/env bash

# This script generates a list of repos in a GitHub org.
# The list can be pasted directly to a Microsoft Excel sheet.
# You will need to use your GitHub username in the username field.
# Update the page=N number to get the complete list of repos.
curl --silent --user "username" "https://api.github.com/orgs/vmware/repos?page=1&per_page=100" | npx jq '.[].html_url' | while read repo
do
    echo "=Hyperlink("$repo","$repo")"
done

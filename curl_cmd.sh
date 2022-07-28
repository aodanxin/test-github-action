#!/bin/bash
URL=https://api.github.com/repos/aodanxin/test-github-action/dispatches
PR_BOT_ACTION_URL=https://api.github.com/repos/Faire/pr-bot/dispatches

curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: token $GITHUB_TOKEN" \
  $URL \
  -d '{"event_type":"ignore_e2e_pr", "client_payload": {"repo":"web-retailer", "jira_ticket_id":"MKG-1234", "file_path":"cypress/integration/testFiles/Cart/PreorderCart.feature", "scenario_name":"Full Cart","reviewer":"aodanxin"}}'
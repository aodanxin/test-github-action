#!/bin/bash
URL=https://api.github.com/repos/aodanxin/test-github-action/dispatches

curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: token $GITHUB_TOKEN" \
  $URL \
  -d '{"event_type":"remote_trigger", "client_payload": {"repo":"web-brand", "jira_ticket_id":"FD-1234", "file_path":"cypress/integration/testFiles/Analytics.feature", "scenario_name": "Navigation"}}'
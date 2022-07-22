#!/bin/bash
URL=https://api.github.com/repos/aodanxin/test-github-action/dispatches

curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: token $GITHUB_TOKEN" \
  $URL \
  -d '{"event_type":"ignore_e2e_pr", "client_payload": {"repo":"web-brand", "jira_ticket_id":"FD-1234", "file_path":"cypress/integration/testFiles/Analytics.feature", "scenario_name": "Filter data by a preset time interval", "reviewer":"bryan-holder-faire"}}'
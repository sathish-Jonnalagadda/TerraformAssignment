#!/bin/sh

# Fetch environment variables set by GitHub Actions
WEBHOOK_URL=${INPUT_WEBHOOK_URL}
MESSAGE=${INPUT_MESSAGE}

# Debug: Print the received inputs for verification
echo "Received Webhook URL: '${WEBHOOK_URL}'"
echo "Received Message: '${MESSAGE}'"

# Send the notification to Slack
curl -X POST -H "Content-type: application/json" --data "{\"text\":\"${MESSAGE}\"}" "${WEBHOOK_URL}"

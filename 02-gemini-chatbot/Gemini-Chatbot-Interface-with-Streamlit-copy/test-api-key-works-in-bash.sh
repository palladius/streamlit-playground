#!/bin/bash

source .env
# ||    exit 42

set -euo pipefail

# see https://ai.google.dev/gemini-api/docs/api-key?hl=it
curl -s -H 'Content-Type: application/json' \
     -d '{"contents":[
            {"role": "user",
              "parts":[{"text": "Give me five subcategories of jazz?"}]}]}' \
     "https://generativelanguage.googleapis.com/v1/models/gemini-pro:generateContent?key=${GOOGLE_API_KEY}" |
        tee t.gemini-response.json |
            jq -r .candidates[0].content.parts[0].text ||
                cat t.gemini-response.json | jq  # .error

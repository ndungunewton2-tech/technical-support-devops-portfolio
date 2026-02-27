#!/bin/bash

API_URL="https://api.github.com"

echo "Checking API health..."

response=$(curl -s -o /dev/null -w "%{http_code}" $API_URL)

if [ $response -eq 200 ]; then
  echo "API is healthy"
else
  echo "API is down. Status code: $response"
fi

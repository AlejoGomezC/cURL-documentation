#!/bin/bash


echo "Starting script..."
mkdir -p docs
echo "Created docs directory"
echo "# API Documentation" > docs/README.md
echo "## Endpoints" >> docs/README.md
echo "Initialized README.md"

if [ ! -s Club.postman_collection.json ]; then
  echo "Error: Club.postman_collection.json is missing or empty"
  exit 1
fi
echo "JSON file exists and is not empty"

jq -r '.item[] | "- **" + .name + "**\n  - Method: " + .request.method + "\n  - URL: " + .request.url.raw + "\n  - Body: ```json\n" + (.request.body.raw // "No body") + "\n```\n  - Response: ```json\n" + (.response[0].body // "No response") + "\n```\n"' Club.postman_collection.json >> docs/README.md
echo "Parsed JSON and updated README.md"

newman run Club.postman_collection.json -r html --reporter-html-export docs/postman_report.html
echo "Ran Newman and generated HTML report"

echo "Documentation generated successfully."


#!/bin/bash
set -e

# Create docs directory
mkdir -p docs

# Initialize the README.md
echo "# API Documentation" > docs/README.md
echo "\n## Endpoints" >> docs/README.md

# Check if the JSON file exists and is not empty
if [ ! -s Club.postman_collection.json ]; then
  echo "Error: Club.postman_collection.json is missing or empty"
  exit 1
fi

# Parse JSON and add to README.md
jq -r '.item[] | "- **" + .name + "**\n  - Method: " + .request.method + "\n  - URL: " + .request.url.raw + "\n  - Body: " + (.request.body.raw // "No body") + "\n"' Club.postman_collection.json >> docs/README.md

# Run Newman and generate HTML report
newman run Club.postman_collection.json -r html --reporter-html-export docs/postman_report.html

echo "Documentation generated successfully."

#!/bin/bash
mkdir -p docs
echo "# API Documentation" > docs/README.md
echo "\n## Endpoints" >> docs/README.md

jq -r '.item[] | "- **" + .name + "**\n  - Method: " + .request.method + "\n  - URL: " + .request.url.raw + "\n  - Body: " + (.request.body.raw // "No body") + "\n"' Club.postman_collection.json >> docs/README.md

newman run Club.postman_collection.json -r html --reporter-html-export docs/postman_report.html

#!/bin/bash

echo "Starting script..."
mkdir -p docs
echo "Created docs directory"
echo "# API Documentation" > docs/.NET_redme.md
echo "## API Endpoints" >> docs/.NET_redme.md
echo "Initialized README.md"

 jq -r '.item[] | "- **" + .name + "**\n  - Method: " + .request.method + "\n  - URL: " + .request.url.raw + "\n  - Body: ```json\n" + (.request.body.raw // "No body") + "\n```\n  - Response: ```json\n" + (.response[0].body // "No response") + "\n```\n"' MyFirst.NetApi.postman_collection.json >> docs/.Net_README.md
        echo "Parsed JSON and updated .NET README.md"

echo "Documentation generated successfully.

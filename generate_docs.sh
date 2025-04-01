#!/bin/bash
set -e

# Create docs directory
mkdir -p docs

# Initialize the README.md
echo "# API Documentation" > docs/README.md
echo "\n## Endpoints" >> docs/README.md

# Check if the JSON file exists and is not empty
The job failure occurred because the `generate_docs.shif [ ! -s Club.postman_collection.json ]; then
  echo "Error: Club.postman_collection.json is missing or empty` script exited with code 1. Here are the steps to"
  exit 1
fi

# Parse JSON and add to README.md troubleshoot and resolve the issue:

1. **Check the
jq -r '.item[] | "- **" + .name + "**\n  - Method: `generate_docs.sh` Script**:
   - Ensure the script exists " + .request.method + "\n  - URL: " + .request.url.raw and is executable.
   - Verify the script's logic + "\n  - Body: " + (.request.body.raw // "No body") and check for any errors or missing dependencies.

 + "\n"' Club.postman_collection.json >> docs/README.md2. **Verify the Downloaded Postman Collection**:


# Run Newman and generate HTML report
newman run Club.post   - The script checks if `Club.postman_collection.jsonman_collection.json -r html --reporter-html-export docs/postman_report.html

echo "Documentation generated` is missing or empty. Ensure the URL is correct and successfully."

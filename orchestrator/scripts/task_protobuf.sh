#!/bin/bash

# NOTE:
# - Replace the placeholders below with your own fork and refs
#   before running this script.
# - This is structured like the libpng task, but targets protobuf.

curl -X 'POST' 'http://127.0.0.1:31323/webhook/trigger_task' \
  -H 'Content-Type: application/json' \
  -d '{
    "challenge_repo_url": "https://github.com/cryptobob8545-ui/protobuf",
    "challenge_repo_base_ref": "46575f0e8d1e16aec817e77711561a983aa13355",
    "challenge_repo_head_ref": "main",
    "fuzz_tooling_url": "https://github.com/cryptobob8545-ui/oss-fuzz",
    "fuzz_tooling_ref": "master",
    "fuzz_tooling_project_name": "protobuf",
    "duration": 14400
  }'

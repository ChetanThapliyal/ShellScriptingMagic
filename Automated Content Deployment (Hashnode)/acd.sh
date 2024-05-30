#!/bin/bash

# Variables
REPO_PATH="/path/to/local/repo"
HASHNODE_API="https://api.hashnode.com"
API_KEY="your_hashnode_api_key"
POSTS_DIR="$REPO_PATH/posts"
DEPLOY_LOG="$REPO_PATH/deploy.log"

# Function to deploy post
deploy_post() {
    local post_file=$1
    local post_content=$(cat "$post_file")
    curl -X POST "$HASHNODE_API/posts" \
        -H "Authorization: Bearer $API_KEY" \
        -H "Content-Type: application/json" \
        -d "$post_content" \
        >> "$DEPLOY_LOG" 2>&1
    echo "Deployed post: $post_file"
}

# Main deployment logic
cd "$REPO_PATH" || exit
for post in "$POSTS_DIR"/*.md; do
    deploy_post "$post"
done

echo "Deployment completed at $(date)" >> "$DEPLOY_LOG"
echo "Deployment completed at $(date)" >> "$DEPLOY_LOG" 2>&1
exit 0
#!/bin/bash

# Function to perform git add, commit, and push
git_add_commit_push() {
    echo "Enter your commit message: "
    read message
    git add .
    git commit -m "$message"
    git push
}

# Main script execution
while true; do
    git_add_commit_push
    echo "Do you want to make another commit? (yes/no): "
    read continue_commit
    if [[ "$continue_commit" != "yes" ]]; then
        break
    fi
done

echo "All commits pushed successfully!"

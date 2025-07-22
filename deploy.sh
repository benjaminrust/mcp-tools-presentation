#!/bin/bash

# MCP Tools Presentation Deployment Script
# This script helps deploy the presentation to GitHub Pages

set -e

echo "🚀 MCP Tools Presentation Deployment Script"
echo "=========================================="

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install git first."
    exit 1
fi

# Get repository URL from user
echo ""
echo "📝 Please provide your GitHub repository URL:"
echo "   Example: https://github.com/benjaminrust/mcp-tools-presentation"
read -p "Repository URL: " REPO_URL

if [ -z "$REPO_URL" ]; then
    echo "❌ Repository URL is required."
    exit 1
fi

# Extract repository name from URL
REPO_NAME=$(basename "$REPO_URL" .git)
echo ""
echo "📦 Repository name: $REPO_NAME"

# Clone the repository
echo ""
echo "📥 Cloning repository..."
git clone "$REPO_URL" temp-repo
cd temp-repo

# Copy presentation files
echo "📋 Copying presentation files..."
cp -r ../* .
rm -rf ../temp-repo

# Add all files
echo "➕ Adding files to git..."
git add .

# Commit
echo "💾 Committing changes..."
git commit -m "Initial commit: MCP Tools presentation

- Add Slidev presentation about hosted MCP tools
- Include comprehensive README with tool descriptions
- Add deployment guide and documentation
- Configure for GitHub Pages hosting"

# Push
echo "🚀 Pushing to GitHub..."
git push origin main

# Cleanup
cd ..
rm -rf temp-repo

echo ""
echo "✅ Deployment completed successfully!"
echo ""
echo "📋 Next steps:"
echo "1. Go to your repository on GitHub: $REPO_URL"
echo "2. Click 'Settings' tab"
echo "3. Scroll down to 'Pages' section"
echo "4. Under 'Source', select 'Deploy from a branch'"
echo "5. Choose 'main' branch and '/(root)' folder"
echo "6. Click 'Save'"
echo ""
echo "🌐 Your presentation will be available at:"
echo "   https://$(echo $REPO_URL | sed 's|https://github.com/||' | sed 's|.git||' | sed 's|/|.github.io/|')/"
echo ""
echo "📚 For more information, see DEPLOYMENT.md" 
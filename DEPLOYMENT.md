# Deployment Guide

This guide explains how to deploy this MCP Tools presentation to GitHub Pages.

## 🚀 GitHub Pages Deployment

### Step 1: Create GitHub Repository

1. Go to [GitHub](https://github.com) and create a new repository
2. Name it: `mcp-tools-presentation` (or your preferred name)
3. Make it **public** (required for GitHub Pages)
4. **Don't** initialize with README (we'll push our files)

### Step 2: Push Files to Repository

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/mcp-tools-presentation.git
cd mcp-tools-presentation

# Copy all files from this directory
cp -r /tmp/mcp-presentation-repo/* .

# Add and commit files
git add .
git commit -m "Initial commit: MCP Tools presentation"
git push origin main
```

### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll down to **Pages** section (in left sidebar)
4. Under **Source**, select **Deploy from a branch**
5. Choose **main** branch
6. Select **/(root)** folder
7. Click **Save**

### Step 4: Access Your Presentation

Your presentation will be available at:
```
https://YOUR_USERNAME.github.io/mcp-tools-presentation/
```

## 🔧 Custom Domain (Optional)

If you want to use a custom domain:

1. In GitHub Pages settings, enter your domain in **Custom domain** field
2. Add a `CNAME` file to your repository with your domain name
3. Configure DNS records to point to `YOUR_USERNAME.github.io`

## 📝 Updating the Presentation

To update the presentation:

1. Make changes to your local files
2. Commit and push to GitHub:
   ```bash
   git add .
   git commit -m "Update presentation content"
   git push origin main
   ```
3. GitHub Pages will automatically rebuild and deploy

## 🛠️ Local Development

To run the presentation locally:

1. Install Slidev:
   ```bash
   npm install -g @slidev/cli
   ```

2. Create a new Slidev project:
   ```bash
   slidev init my-presentation
   cd my-presentation
   ```

3. Edit `slides.md` with your content

4. Run the development server:
   ```bash
   slidev slides.md
   ```

5. Build for production:
   ```bash
   slidev build slides.md
   ```

## 📋 File Structure

```
mcp-tools-presentation/
├── index.html          # Main presentation file
├── assets/             # Static assets (CSS, JS, images)
├── 404.html           # Custom 404 page
├── _redirects         # Netlify redirects (if needed)
├── README.md          # Repository documentation
├── LICENSE            # MIT License
├── .gitignore         # Git ignore rules
└── DEPLOYMENT.md      # This file
```

## 🔍 Troubleshooting

### Common Issues

1. **Presentation not loading**: Check that all asset paths are relative
2. **Images not showing**: Ensure images are in the `assets/` directory
3. **Styling issues**: Verify CSS files are properly linked in `index.html`

### GitHub Pages Build Issues

1. Check the **Actions** tab for build logs
2. Ensure repository is public
3. Verify branch name is `main` (not `master`)

## 📞 Support

If you encounter issues:

1. Check [GitHub Pages documentation](https://docs.github.com/en/pages)
2. Review [Slidev documentation](https://sli.dev/)
3. Open an issue in this repository

---

*This presentation was built with [Slidev](https://sli.dev/) and deployed on [GitHub Pages](https://pages.github.com/)* 
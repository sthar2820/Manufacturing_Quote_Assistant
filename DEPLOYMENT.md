# Streamlit Cloud Deployment Guide

This guide will help you deploy the Manufacturing Quote Assistant to Streamlit Cloud for free hosting.

## Prerequisites

1. **GitHub Account** - You'll need this to store your code
2. **Google AI API Key** - Get it from [Google AI Studio](https://makersuite.google.com/app/apikey)
3. **Streamlit Account** - Sign up at [share.streamlit.io](https://share.streamlit.io)

## Step-by-Step Deployment

### Step 1: Push to GitHub

1. **Create a new GitHub repository**:
   - Go to [github.com](https://github.com) and click "New repository"
   - Name it something like `manufacturing-quote-assistant`
   - Make it **Public** (required for free Streamlit hosting)
   - Don't initialize with README (we have our own files)

2. **Push your code**:
   ```bash
   # In VS Code terminal, navigate to your project directory
   cd "c:\Users\RShrestha\OneDrive - Dura-Shiloh\Desktop\Quote\src\core\Quote_Assistant"
   
   # Initialize git repository
   git init
   
   # Add all files
   git add .
   
   # Commit files
   git commit -m "Initial commit: Manufacturing Quote Assistant"
   
   # Add your GitHub repository as remote (replace YOUR_USERNAME with your GitHub username)
   git remote add origin https://github.com/YOUR_USERNAME/manufacturing-quote-assistant.git
   
   # Push to GitHub
   git push -u origin main
   ```

### Step 2: Deploy on Streamlit Cloud

1. **Go to Streamlit Cloud**:
   - Visit [share.streamlit.io](https://share.streamlit.io)
   - Sign in with GitHub

2. **Create New App**:
   - Click "New app"
   - Select your repository: `manufacturing-quote-assistant`
   - Main file path: `app.py`
   - App URL: Choose a custom URL (e.g., `your-quote-assistant`)

3. **Add Secrets**:
   - In the app settings, go to "Secrets"
   - Add your Google API key:
   ```toml
   GOOGLE_API_KEY = "your_actual_google_api_key_here"
   ```

4. **Deploy**:
   - Click "Deploy!"
   - Wait for the app to build and deploy (usually 2-5 minutes)

## 🌐 Access Your App

Once deployed, your app will be available at:
- `https://your-quote-assistant.streamlit.app`
- Or the URL you chose during setup

## 🔄 Updating Your App

To update your deployed app:

1. **Make changes locally**
2. **Push to GitHub**:
   ```bash
   git add .
   git commit -m "Update: description of changes"
   git push
   ```
3. **Streamlit Cloud will auto-deploy** the changes within a few minutes

## 🐛 Troubleshooting

### Common Issues:

**"Module not found" errors:**
- Make sure `requirements.txt` is in your repository root
- Check that all dependencies are listed correctly

**"API Key not found" errors:**
- Verify the API key is correctly set in Streamlit secrets
- Make sure the secret name is exactly `GOOGLE_API_KEY`

**App won't start:**
- Check the logs in Streamlit Cloud dashboard
- Ensure `app.py` is in the repository root
- Verify your GitHub repository is public

**Large file errors:**
- Make sure `.gitignore` is excluding large files
- Remove any large test files from the repository

## 💡 Tips for Success

1. **Test locally first** before deploying
2. **Keep your repository clean** - use `.gitignore`
3. **Use meaningful commit messages**
4. **Monitor the logs** in Streamlit Cloud for issues
5. **Keep your API key secure** - never commit it to the repository

## 🎯 Final Checklist

Before deploying, make sure you have:

- [ ] Created GitHub repository
- [ ] Added all necessary files
- [ ] Configured `.gitignore` properly
- [ ] Obtained Google AI API key
- [ ] Pushed code to GitHub
- [ ] Created Streamlit Cloud account
- [ ] Added API key to Streamlit secrets
- [ ] Deployed the app

Once deployed, you'll have a live, shareable Manufacturing Quote Assistant that anyone can use!

---

**Need help?** Check the Streamlit Cloud documentation or the troubleshooting section above.

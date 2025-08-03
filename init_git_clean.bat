@echo off
echo Setting up Git repository for Manufacturing Quote Assistant...
echo.

REM Initialize git repository
git init

REM Add all files
git add .

REM Initial commit with clean message
git commit -m "Initial commit: Manufacturing Quote Assistant

Features:
- Complete Streamlit application for manufacturing quote analysis
- AI-powered document processing with Google Gemini
- Support for PDF, DOCX, XLSX, TXT files
- RAG-based document chat functionality
- Professional Word report generation  
- Clean professional interface without emojis
- Ready for Streamlit Cloud deployment"

echo.
echo Git repository initialized successfully!
echo.
echo Next steps:
echo 1. Create a new repository on GitHub
echo 2. Add remote: git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git
echo 3. Push to GitHub: git push -u origin main
echo 4. Deploy on Streamlit Cloud using the repository
echo.
echo See DEPLOYMENT.md for detailed instructions!
echo.
pause

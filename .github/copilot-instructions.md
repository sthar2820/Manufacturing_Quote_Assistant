<!-- Use this file to provide workspace-specific custom instructions to Copilot. For more details, visit https://code.visualstudio.com/docs/copilot/copilot-customization#_use-a-githubcopilotinstructionsmd-file -->

# Manufacturing Quote Assistant - Copilot Instructions

## Project Overview
This is a Manufacturing Quote Assistant built with Streamlit and Google Generative AI. The application analyzes manufacturing quote documents and provides comprehensive analysis reports.

## Key Technologies
- **Streamlit**: Web application framework
- **Google Generative AI (Gemini)**: Document analysis and chat capabilities  
- **LangChain**: RAG (Retrieval Augmented Generation) implementation
- **FAISS**: Vector database for semantic search
- **PyMuPDF, python-docx, openpyxl**: Document processing

## Code Style Guidelines
- Follow PEP 8 Python style guidelines
- Use type hints for function parameters and return values
- Include comprehensive docstrings for all functions and classes
- Implement proper error handling with try-catch blocks
- Use meaningful variable and function names

## Architecture Patterns
- Single-file Streamlit application for simplicity
- Session state management for persistent data
- Modular functions for different document types
- Structured data dictionaries for analysis results

## AI Integration Best Practices
- Always include proper API key validation
- Implement graceful fallbacks for AI service failures
- Use structured prompts for consistent AI responses
- Parse AI responses into structured data formats

## Document Processing
- Support multiple file formats: PDF, DOCX, XLSX, TXT
- Extract text content preserving structure where possible
- Handle file processing errors gracefully
- Provide user feedback during processing

## User Interface Guidelines
- Use Streamlit's column layouts for organized display
- Implement proper loading indicators for long operations
- Provide clear success/error messages
- Use expandable sections for detailed analysis results

## Error Handling
- Catch and display user-friendly error messages
- Log errors for debugging while protecting sensitive information
- Provide fallback behaviors when services are unavailable
- Validate user inputs before processing

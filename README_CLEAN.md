# Manufacturing Quote Assistant

A comprehensive AI-powered Streamlit application for analyzing manufacturing quotes and documents.

[![Streamlit App](https://static.streamlit.io/badges/streamlit_badge_black_white.svg)](https://share.streamlit.io)
[![Python 3.8+](https://img.shields.io/badge/python-3.8+-blue.svg)](https://www.python.org/downloads/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Features

- **Multi-Format Document Support**: Process PDF, DOCX, XLSX, and TXT files
- **AI-Powered Analysis**: Comprehensive quote evaluation using Google Gemini
- **Risk Assessment**: Automated risk scoring and quote readiness evaluation
- **Professional Reports**: Generate downloadable Word analysis reports
- **Document Chat**: RAG-based chatbot to ask questions about uploaded documents
- **Batch Processing**: Analyze multiple documents simultaneously
- **Cloud Ready**: Optimized for Streamlit Cloud deployment

## Quick Deploy to Streamlit Cloud

1. **Fork this repository** or create a new one with this code
2. **Get a Google AI API key** from [Google AI Studio](https://makersuite.google.com/app/apikey)
3. **Deploy on Streamlit Cloud**:
   - Go to [share.streamlit.io](https://share.streamlit.io)
   - Connect your GitHub repository
   - Set `app.py` as the main file
   - Add your API key in Secrets: `GOOGLE_API_KEY = "your_key_here"`
4. **Launch your app!**

**Detailed deployment guide**: See [DEPLOYMENT.md](DEPLOYMENT.md)

## Quick Local Setup

### Prerequisites
- Python 3.8+
- Google AI API key ([Get it here](https://makersuite.google.com/app/apikey))

### Installation

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/manufacturing-quote-assistant.git
cd manufacturing-quote-assistant

# Install dependencies
pip install -r requirements.txt

# Set up environment
cp .env.example .env
# Edit .env and add your Google API key

# Run the application
streamlit run app.py
```

The application will open in your browser at `http://localhost:8501`

## How to Use

### Document Analysis
1. **Upload Files**: Use the sidebar to upload quote documents (PDF, DOCX, XLSX, TXT)
2. **Analyze**: Click "Analyze Documents" to process all uploaded files
3. **Review Results**: View comprehensive analysis including:
   - CRD Data Summary
   - Manufacturing Feasibility Assessment
   - Material & Component Sourcing Requirements
   - Missing Critical Information
   - Comparison Baseline Data
   - Risk Factors & Special Requirements
4. **Generate Report**: Create and download professional Word reports
5. **Chat**: Ask questions about your documents using the AI chat interface

### Analysis Features

The application provides detailed analysis in these key areas:

- **CRD Data Summary**: Part numbers, specifications, quantities, delivery requirements
- **Manufacturing Feasibility**: Production challenges, special processes, equipment needs
- **Sourcing Requirements**: Raw materials, purchased components, supplier requirements
- **Missing Information**: Critical data gaps and clarification needs
- **Risk Assessment**: Automated scoring (0-100%) and quote readiness evaluation
- **Risk Factors**: Non-standard processes, tight tolerances, special certifications

## Technical Architecture

### Core Components
- **Streamlit**: Web interface and user interaction
- **Google Generative AI**: Document analysis and chat responses
- **LangChain + FAISS**: RAG (Retrieval Augmented Generation) for document chat
- **Document Processors**: Multi-format text extraction (PyMuPDF, python-docx, openpyxl)
- **Report Generator**: Professional Word document creation

### File Structure
```
manufacturing-quote-assistant/
├── app.py                    # Main Streamlit application
├── requirements.txt          # Python dependencies
├── .env.example             # Environment template
├── .gitignore               # Git ignore rules
├── README.md               # This file
├── DEPLOYMENT.md           # Deployment guide
├── secrets.toml.example    # Streamlit Cloud secrets template
├── .github/
│   └── copilot-instructions.md  # AI coding guidelines
└── processed_files/        # Generated reports (auto-created)
```

## Configuration

### Environment Variables
- `GOOGLE_API_KEY`: Your Google AI API key (required)

### Streamlit Cloud Secrets
For Streamlit Cloud deployment, add this to your app secrets:
```toml
GOOGLE_API_KEY = "your_google_api_key_here"
```

### Supported File Types
- **PDF**: Text extraction using PyMuPDF
- **DOCX**: Microsoft Word documents
- **XLSX**: Excel spreadsheets  
- **TXT**: Plain text files

## Deployment Options

### Streamlit Cloud (Recommended)
- **Free hosting** for public repositories
- **Automatic deployments** from GitHub
- **Easy secrets management**
- **Custom domains** available

### Other Platforms
The application is compatible with:
- Heroku
- Google Cloud Run
- AWS ECS
- Any Python hosting platform

## Troubleshooting

### Common Issues

**Import Errors**
- Ensure all dependencies are installed: `pip install -r requirements.txt`

**API Key Issues**
- Verify your Google API key is correctly set
- Check API key validity at [Google AI Studio](https://makersuite.google.com/)

**File Upload Problems**
- Ensure files are in supported formats (PDF, DOCX, XLSX, TXT)
- Check file size limits (typically 200MB max)

**Memory Issues with Large Files**
- Process files individually for better performance
- RAG features require additional memory for vector storage

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- **Google Generative AI** for powerful document analysis
- **Streamlit** for the amazing web framework
- **LangChain** for RAG capabilities
- **Manufacturing Engineers** for domain expertise and feedback

## Support

- Check the [Deployment Guide](DEPLOYMENT.md)
- Report issues on [GitHub Issues](https://github.com/YOUR_USERNAME/manufacturing-quote-assistant/issues)
- Join discussions in [GitHub Discussions](https://github.com/YOUR_USERNAME/manufacturing-quote-assistant/discussions)

---

**Built with care for Manufacturing Engineers**

**[Deploy Now on Streamlit Cloud](https://share.streamlit.io)**

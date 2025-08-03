#!/usr/bin/env python3
"""
Test script to verify all imports are working correctly
"""

print("Testing imports...")

try:
    import google.generativeai as genai
    print("✓ Google Generative AI imported successfully")
    print(f"  Version: {genai.__version__}")
except ImportError as e:
    print(f"✗ Google Generative AI failed: {e}")

try:
    import streamlit as st
    print("✓ Streamlit imported successfully")
except ImportError as e:
    print(f"✗ Streamlit failed: {e}")

try:
    import fitz
    print("✓ PyMuPDF imported successfully")
except ImportError as e:
    print(f"✗ PyMuPDF failed: {e}")

try:
    from docx import Document
    print("✓ python-docx imported successfully")
except ImportError as e:
    print(f"✗ python-docx failed: {e}")

try:
    import openpyxl
    print("✓ openpyxl imported successfully")
except ImportError as e:
    print(f"✗ openpyxl failed: {e}")

try:
    from langchain.embeddings import HuggingFaceEmbeddings
    from langchain.vectorstores import FAISS
    print("✓ LangChain components imported successfully")
except ImportError as e:
    print(f"✗ LangChain components failed: {e}")

print("\nAll critical imports tested!")
print("If all imports show ✓, your environment is ready.")

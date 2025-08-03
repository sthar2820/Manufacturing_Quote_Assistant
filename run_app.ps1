Write-Host "Starting Manufacturing Quote Assistant..." -ForegroundColor Green
Write-Host "Using Python: C:/Users/RShrestha/AppData/Local/Programs/Python/Python313/python.exe" -ForegroundColor Yellow
Write-Host ""

# Test imports first
Write-Host "Testing imports..." -ForegroundColor Cyan
& "C:/Users/RShrestha/AppData/Local/Programs/Python/Python313/python.exe" test_imports.py

Write-Host ""
Write-Host "Starting Streamlit app..." -ForegroundColor Green
& "C:/Users/RShrestha/AppData/Local/Programs/Python/Python313/python.exe" -m streamlit run app.py

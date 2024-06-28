ECHO Activating conda environment...
call conda activate serenescreen
IF ERRORLEVEL 1 (
    ECHO Failed to activate conda environment.
    PAUSE
    EXIT /B 1
)

ECHO Installing additional packages...
pip install pygetwindow pillow pytesseract transformers requests textblob pywin32 pyautogui langchain streamlit langchain_community langchain_openai sentence-transformers faiss-cpu psutil numpy --upgrade
IF ERRORLEVEL 1 (
    ECHO Failed to install some packages.
    PAUSE
    EXIT /B 1
)
PAUSE

ECHO Pulling ollama models...
ollama pull phi3
ollama pull mistral
IF ERRORLEVEL 1 (
    ECHO Failed to pul models.
    PAUSE
    EXIT /B 1
)
PAUSE

ECHO Installing PyTorch and dependencies...
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
IF ERRORLEVEL 1 (
    ECHO Failed to install PyTorch and dependencies.
    PAUSE
    EXIT /B 1
)
PAUSE

ECHO All packages installed successfully.
PAUSE

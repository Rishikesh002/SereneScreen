ECHO Activating conda environment...
call conda activate serenescreen
IF ERRORLEVEL 1 (
    ECHO Failed to activate conda environment.
    PAUSE
    EXIT /B 1
)

ECHO Starting the App...
python -m streamlit run app.py   
PAUSE
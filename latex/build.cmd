@echo off
setlocal
cd /d "%~dp0"
if not exist build mkdir build
latexmk -xelatex -interaction=nonstopmode -halt-on-error -outdir=build main.tex
if errorlevel 1 exit /b 1
copy /y "build\main.pdf" "main.pdf" >nul
if errorlevel 1 exit /b 1
copy /y "build\main.pdf" "report-draft.pdf" >nul
if errorlevel 1 exit /b 1
echo Updated main.pdf and report-draft.pdf
endlocal

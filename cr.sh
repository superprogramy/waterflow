#!/bin/bash

# Główna ścieżka projektu (zakładamy, że już jesteś w /root/waterfow)
PROJECT_DIR="$(pwd)"

# Tworzenie podfolderów
mkdir -p "$PROJECT_DIR/src/waterfow"          # Kod źródłowy
mkdir -p "$PROJECT_DIR/tests"                # Testy
mkdir -p "$PROJECT_DIR/docs"                 # Dokumentacja
mkdir -p "$PROJECT_DIR/config"               # Konfiguracje
mkdir -p "$PROJECT_DIR/scripts"              # Skrypty pomocnicze

# Tworzenie plików w folderze głównym
touch "$PROJECT_DIR/README.md"               # Plik README
touch "$PROJECT_DIR/requirements.txt"        # Wymagania Pythona
touch "$PROJECT_DIR/.gitignore"              # Plik .gitignore
touch "$PROJECT_DIR/setup.py"                # Plik instalacyjny Pythona

# Dodanie przykładowych plików do podfolderów
echo "# Waterfow - README" > "$PROJECT_DIR/README.md"
echo "# Dokumentacja projektu Waterfow" > "$PROJECT_DIR/docs/overview.md"
echo "#!/usr/bin/env python3\n\nprint('Waterfow running...')" > "$PROJECT_DIR/src/waterfow/main.py"
echo "pytest" > "$PROJECT_DIR/requirements.txt"
echo "__pycache__/\n*.pyc\n.env" > "$PROJECT_DIR/.gitignore"
echo "from setuptools import setup, find_packages\n\nsetup(\n    name='waterfow',\n    version='0.1.0',\n    packages=find_packages(where='src'),\n    package_dir={'': 'src'},\n)" > "$PROJECT_DIR/setup.py"

# Informacja o zakończeniu
echo "Struktura projektu Python Waterfow została utworzona w $PROJECT_DIR"

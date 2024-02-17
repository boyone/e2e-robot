# VENV

1. Setup

   ```sh
   python -m venv .venv
   ```

2. Activate

   - Linux, Mac

     ```sh
     source .venv/bin/activate
     ```

   - Windows

     ```sh
     .venv\Scripts\activate.bat
     ```

   - Windows PowerShell

     ```sh
     .venv\Scripts\activate.ps1
     ```

3. Deactivate

   - Linux, Mac

     ```sh
     deactivate
     ```

   - Windows

     ```sh
     .venv\Scripts\deactivate.bat
     ```

   - Windows PowerShell

     ```sh
     .venv\Scripts\deactivate.ps1
     ```

4. Install Packages

   ```sh
   pip install robotframework
   robot --version
   ```

5. Freeze Packages

   - freeze

     ```sh
     pip freeze > requirements.txt
     ```

   - re-install packages

     ```sh
     pip install -r requirements.txt
     ```

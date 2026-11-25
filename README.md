# Retaining Wall Design

Civil engineering CAD suite for **Masonry Wall**, **Gabion Wall**, and **RCC Retaining Wall** design, quantity calculation (BOQ), DXF export, and print layouts.

**Developer:** Er. Santosh Kapar (Civil Engineer, Department of Roads, Government of Nepal)

## Build Windows `.exe` Locally

1. Install **Node.js (LTS)** from [https://nodejs.org/](https://nodejs.org/).
2. Open a terminal/command prompt inside this folder (or double-click `build-exe.bat`).
3. Run:
   ```bash
   npm install
   npm run build:win
   ```
4. Find the generated `.exe` installer and portable `.exe` inside the `dist/` folder.

## Build Windows `.exe` Automatically on GitHub

This repository includes a GitHub Actions workflow at `.github/workflows/build-windows-exe.yml`. Whenever you push to `main` or trigger the workflow manually from the **Actions** tab on GitHub, GitHub builds the Windows `.exe` files and attaches them under **Artifacts**.

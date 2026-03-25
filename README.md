# 🕹️ Tales From the Script: Bitter Bog Edition

![Bash](https://img.shields.io/badge/Language-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Status](https://img.shields.io/badge/Status-Stable-success?style=for-the-badge)
![License](https://img.shields.io/badge/License-Apache%202.0-blue?style=for-the-badge)

## 📋 Case Study: The Problem & Solution

**The Problem:** Most introductory Bash scripts are purely functional and fail to demonstrate the "human-centric" side of systems administration—specifically, how to manage user state, handle complex nested logic, and provide engaging feedback in a CLI environment.

**The Solution:** This project serves as a technical demonstration of **Advanced Bash Scripting**. It solves the "engagement gap" by utilizing:

* **State Management:** Tracking player HP, Attack, and Loot variables dynamically across multiple functions.
* **Dynamic UI:** Implementing a custom "typewriter" effect for narrative delivery to control user pacing and immersion.
* **Input Validation:** Utilizing robust `while` and `case` loops to ensure the script handles unexpected user input without crashing.
* **Visual Design:** Leveraging ANSI escape codes and Heredocs (`cat << 'EOF'`) to render complex ASCII art and color UI without shell syntax errors.

---

## 🚀 How to Run (GitHub Codespaces)

1.  **Open** this repository in a GitHub Codespace.
2.  **Make the script executable** by running the following command in the terminal:
    ```bash
    chmod +x bin/play.sh
    ```
3.  **Launch the game**:
    ```bash
    ./bin/play.sh
    ```

---

## 🛠️ Requirements & Compatibility

* **OS:** Linux / macOS (Unix-based)
* **Shell:** Bash 4.0+
* **Terminal:** Must support ANSI colors (`xterm-256color` recommended).

---

## ⚖️ Licensing & Attribution

* **License:** Apache License 2.0
* **Script Template Inspiration:** William Newman
* **Narrative Inspiration:** *Tales from the Crypt*
* **Pop Culture References:** *Futurama* (Hypnotoad), *D&D*, and *Rogue*.
* **ASCII Art:** Sourced from [asciiart.eu](https://www.asciiart.eu/).
* **Development Assistance:** Assistance from Google Gemini.

---
**Developed by Amber Renfroe** *Application Development Student | North Seattle College*
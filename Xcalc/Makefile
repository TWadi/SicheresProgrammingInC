# Simple Makefile Template

# Compiler
CC = gcc

# Compiler flags
CFLAGS = -std=c11 -fno-stack-protector
# Target executable
TARGET =  Xcalc

# Source files
SRC = $(wildcard *.c)

# Object files
OBJ = $(SRC:.c=.o)

# Default target
all: $(TARGET)

# Linking target
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

# Compile .c files into .o files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up
clean:
	rm -f $(OBJ) $(TARGET)

.PHONY: all clean

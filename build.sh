#!/bin/bash
set -e

echo "Compiling..."
javac Hello.java

echo "Running..."
java Hello

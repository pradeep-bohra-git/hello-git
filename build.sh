#!/bin/bash
set -e

echo "Compiling Java file..."
javac Hello.java

mkdir -p target

cp Hello.class target/

echo "Build Successful" > target/build.txt

echo "Running..."
java Hello


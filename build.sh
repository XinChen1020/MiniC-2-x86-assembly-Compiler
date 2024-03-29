#!/bin/bash
java -classpath javacc.jar javacc PA5.jj
javac PA5.java
javac CodeGen_Visitor.java
echo "compiled java files"
cp tests/test0.c tests/demo_while.c
java PA5 < tests/demo_while.c > tests/demo_while.s
cd tests; gcc demo_while.s print.s -o demo; ./demo
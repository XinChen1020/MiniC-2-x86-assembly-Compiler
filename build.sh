#!/bin/bash
java -classpath javacc.jar javacc PA5.jj
javac PA5.java
javac AST_Visitor.java
echo "compiled java files"
java PA5 < tests/demo_while.c 
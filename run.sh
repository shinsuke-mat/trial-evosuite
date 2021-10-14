#!/bin/bash

EVOSUITE_VERSION=1.2.0

if [ ! -f evosuite*.jar ]; then
    wget -O evosuite.jar https://github.com/EvoSuite/evosuite/releases/download/v$EVOSUITE_VERSION/evosuite-$EVOSUITE_VERSION.jar
fi

echo '>> compiling java file'
javac -d build src/Example.java

echo '>> executing evosuite'
java -jar evosuite.jar -class Example -projectCP build

echo '>> here is the results'
cat evosuite-tests/Example_ESTest.java

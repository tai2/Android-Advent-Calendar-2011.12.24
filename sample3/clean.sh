#!/bin/sh
find . -name "*.o" | xargs rm
find . -name "*.class" | xargs rm
find . -name "*~" | xargs rm
find . -name ".DS_Store" | xargs rm
rm -f src/net/tai2/director_test/director_test.java
rm -f src/net/tai2/director_test/director_testJNI.java
rm -f src/net/tai2/director_test/CppClass.java
rm -f src/net/tai2/director_test/Speaker.java
rm -rf obj gen bin libs

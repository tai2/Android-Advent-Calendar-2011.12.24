#!/bin/sh
find . -name "*.o" | xargs rm
find . -name "*.class" | xargs rm
find . -name "*~" | xargs rm
rm src/net/tai2/director_test/director_test.java
rm src/net/tai2/director_test/director_testJNI.java
rm src/net/tai2/director_test/CppClass.java
rm src/net/tai2/director_test/Speaker.java

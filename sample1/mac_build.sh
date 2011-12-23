#!/bin/sh
g++ -c jni/native.cpp jni/director_test_wrap.cpp -I`javaconfig Headers`
g++ -shared native.o director_test_wrap.o -o libdirector_test.dylib
javac TestMain.java -sourcepath src

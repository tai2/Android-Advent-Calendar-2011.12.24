#!/bin/sh
mkdir -p src/net/tai2/director_test
swig -c++ -java -package net.tai2.director_test -outdir src/net/tai2/director_test -o jni/director_test_wrap.cpp director_test.i

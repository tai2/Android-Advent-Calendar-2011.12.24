%module(directors="1") director_test 
%include "std_string.i"

%{
#include "native.h"
%}

// For director threading issues.
// cf. http://www.swig.org/Doc2.0/Java.html#Java_directors_threading
%insert("runtime") %{
#define SWIG_JAVA_ATTACH_CURRENT_THREAD_AS_DAEMON
#define SWIG_JAVA_NO_DETACH_CURRENT_THREAD
%}

%feature("director") CppClass;
%include "jni/native.h"


#ifndef CPP_CLASS_H
#define CPP_CLASS_H

#include <string>

class CppClass
{
public:
    virtual ~CppClass();
    virtual std::string getLanguage() const;
};

class Speaker
{
public:
    Speaker(CppClass* obj);
    std::string getMessage() const;

private:
    CppClass* obj_;
};

#endif//CPP_CLASS_H


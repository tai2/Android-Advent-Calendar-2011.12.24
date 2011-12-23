#include "native.h"

CppClass::~CppClass()
{
}

std::string
CppClass::getLanguage() const
{
    return "C++";
}

Speaker::Speaker(CppClass* obj)
    : obj_(obj)
{
}

std::string
Speaker::getMessage() const
{
    return "Hello form " + obj_->getLanguage();
}


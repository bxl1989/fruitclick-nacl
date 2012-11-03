#ifndef FRUITCLICK_EXPORT_H
#define FRUITCLICK_EXPORT_H

#ifdef _WIN32
    #define DLLImport __declspec(dllimport)
    #define DLLExport __declspec(dllexport)
#else
    #define DLLImport
    #define DLLExport
#endif

#if defined(FRUITCLICK_LIBRARY)
    #define FRUITCLICK_EXPORT DLLExport
#else
    #define FRUITCLICK_EXPORT DLLImport
#endif

#endif

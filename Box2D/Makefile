PWD:=$(shell pwd)
BUILDDIR = $(PWD)/build/

CLANG = /usr/local/bin/clang
LLVM_LINK = /usr/local/bin/llvm-link
CLANGFLAGS = -emit-llvm -S -I .
	
SRCS = $(wildcard */*.cpp */*/*.cpp)
LLS = $(patsubst %.cpp,%.ll,$(SRCS))	
TARGET = libBox2D.ll

.PHONY:all
all:$(TARGET)

libBox2D.ll:$(LLS)
	$(LLVM_LINK) -o $(TARGET) $(shell find build -name *.ll)
$(LLS):%.ll:%.cpp
	$(CLANG) $(CLANGFLAGS) $< -o $(BUILDDIR)$@

.PHONY:clean
clean:
	rm build/*/*.ll build/*/*/*.ll

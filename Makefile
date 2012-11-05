ABSPATH = /home/bxl/nacl-app/fruit-click-read-only/fruitclick-nacl
GCC = /usr/bin/gcc
AS = /usr/bin/as
CLANGPP = /usr/local/bin/clang++
CLANGFLAGS = -emit-llvm -S -I/home/bxl/ppapi-new/ -I. -pthread -g
LLVM_LINK = /usr/local/bin/llvm-link
LLC = /usr/local/bin/llc
LLVM_DIS = /usr/local/bin/llvm-dis

LLS = apple.ll application.ll b2dobject.ll bound.ll \
	 grass.ll nacl_platform.ll platform.ll utils.ll

TARGET = fruitclick.so fruitclick.ll

.PHONY: all
all: $(TARGET)

fruitclick.so:fruitclick.o
	$(GCC) -o fruitclick.so -shared -Wl,--start-group fruitclick.o -Wl,--end-group
fruitclick.o:fruitclick.s
	$(AS) -o fruitclick.o fruitclick.s	
fruitclick.s:fruitclick.bc
	$(LLC) -o fruitclick.s fruitclick.bc
fruitclick.ll:fruitclick.bc
	$(LLVM_DIS) -o fruitclick.ll fruitclick.bc
fruitclick.bc:$(LLS)
	$(LLVM_LINK) -o fruitclick.bc /home/bxl/ppapi-new/ppapi/libppapi_cpp.ll $(LLS) Box2D/libBox2D.ll

$(LLS):%.ll:%.cpp
	 $(CLANGPP) $(CLANGFLAGS) $< -o $@

run:
	 /opt/google/chrome/chrome --no-sandbox --register-pepper-plugins="$(ABSPATH)/fruitclick.so;application/x-fruitclick" file:///$(ABSPATH)/fruitclick.html

.PHONY:clean
clean:
	rm -f *.ll *.bc *.s *.o *.so


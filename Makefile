ABSPATH = /home/bxl/nacl-app/fruit-click-read-only/fruitclick-nacl
CC = /usr/bin/gcc
CFLAGS = -I/home/bxl/ppapi-new/ -pthread -g
LDFLAGS = -shared -pthread -g -Wl,--start-group $(object) \
  	  /home/bxl/ppapi-new/ppapi/out/Default/obj.target/libppapi_cpp_objects.a \
	  /home/bxl/ppapi-new/ppapi/out/Default/obj.target/libppapi_cpp.a \
	  /usr/local/lib/libBox2D.a \
	  -Wl,--end-group -I/home/bxl/ppapi-new -lpthread 

object = apple.o application.o b2dobject.o bound.o \
	 grass.o nacl_platform.o platform.o utils.o

.PHONY: all
all: fruitclick.so $(object)

fruitclick.so: $(object)
	$(CC) -o fruitclick.so $(LDFLAGS)

$(object):%.o:%.cpp
	$(CC) -c $(CFLAGS) $< -o $@
	
run:
	 /opt/google/chrome/chrome --no-sandbox --register-pepper-plugins="$(ABSPATH)/fruitclick.so;application/x-fruitclick" file:///$(ABSPATH)/fruitclick.html

.PHONY:clean
clean:
	rm -f *.o *.so


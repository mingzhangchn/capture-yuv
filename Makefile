

SRC=capture.c

OBJ=capture.o

OUT=test.elf

LIBS  = 
       
INCLUDES = -I./

CPPFLAGS+=-std=gnu++11 



.PONEY: all
all:  $(OUT)


$(OUT):$(OBJ) $(LIBS) 
	gcc  $(OBJ) $(LIBS) -o $@ 

%.o:%.c
	gcc -c $(CFLAGS) $(INCLUDES) $< -o $@
    
%.o:%.cpp
	g++ -c $(CPPFLAGS) $(INCLUDES) $< -o $@    
	
clean:
	@rm $(OBJ) $(OUT)
	
	

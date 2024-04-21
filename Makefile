exec = bobon.exe
sources = $(wildcard src/*.c)
objects = $(sources:.c=.o)
flags = -g 

$(exec): $(objects)
	gcc $(objects) $(flags) -o $(exec)
	@echo ---------------------------
	@echo Done building
	@echo ---------------------------


%.o: %.c include/%.h
	gcc -c $(flags) $< -o $@

clean:
	-rm *.out
	-rm *.o
	-rm src/*.o
install:
	mingw32-make
	@echo Install complete please add to system path or else it wont work 
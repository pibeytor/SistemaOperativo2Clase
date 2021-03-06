TARGET=exemploClase
SRCFILES = Disk.cpp main.cpp 
OBJ_FILE = ${SRCFILES:.cpp=.o}

.PHONY: clean 

$(TARGET): $(OBJ_FILE)
	g++ -std=c++11 -o $@ $(OBJ_FILE)

%.o: %.cpp 
	g++ -std=c++11 -c -o $@ $<

clean:
	rm -f *.o
	rm -f $(TARGET)

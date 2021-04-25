# Build

#target has a name
#followed by dependency

#variables
CC = clang
CLFAGS = -g
INCLUDE = -I./include
LIBS = 
SRC = ./src
TARGET = circleProgs


build: 
	$(CC) -o $(TARGET) $(SRC)/*.c $(INCLUDE)

libs:
	$(CC) $(CFLAGS) -o $(LIBS)/libOne.o -c $(SRC)/libOne.c $(INCLUDE)


main:
	$(CC) -o $(LIBS)/main.o -c $(SRC)/main.c $(INCLUDE)


#removes stuff
clean:
	rm $(TARGET)

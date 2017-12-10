CFLAGS	= -g
CC	= gcc
OBJ	= myAllocatorTest1 test2

all: $(OBJ)

myAllocatorTest1: myAllocator.o myAllocatorTest1.o
	$(CC) $(CFLAGS) -o $@ $^

test2: myAllocator2.o malloc2.o test2.o
	$(CC) $(CFLAGS) -o $@ $^
clean:
	rm -f *.o $(OBJ) 


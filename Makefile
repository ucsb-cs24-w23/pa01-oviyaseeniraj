CXX = g++
# CXX = clang++

CXXFLAGS= -Wall -Wno-uninitialized


OBJECTFILES = cards.o main.o
TARGET = game

all: ${TARGET}

${TARGET}: ${OBJECTFILES}
	$(CXX) ${CXXFLAGS} -o ${TARGET} ${OBJECTFILES} 

clean:
	/bin/rm -f ${TARGET} *.o
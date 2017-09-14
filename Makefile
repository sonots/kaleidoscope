TARGET = toy
LIBS = $(shell llvm-config --ldflags --system-libs --libs core)
INCLUDE = $(shell llvm-config --cxxflags)

all : $(TARGET)

$(TARGET) : toy.cpp
	clang++ -g -O3 $(INCLUDE) -std=c++11 -o $(TARGET) toy.cpp $(LIBS)

run :
	./$(TARGET)

clean :
	rm -f $(TARGET)

prepare:
	brew install llvm


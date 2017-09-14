TARGET = toy
LIBS = $(shell llvm-config --ldflags --system-libs --libs core mcjit native)
INCLUDE = $(shell llvm-config --cxxflags)

all : $(TARGET)

$(TARGET) : toy.cpp
	clang++ -g toy.cpp $(INCLUDE) $(LIBS) -O3 -o $(TARGET)

run :
	./$(TARGET)

clean :
	rm -f $(TARGET)

prepare:
	brew install llvm


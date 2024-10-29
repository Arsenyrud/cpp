# Makefile
CXX = g++
CXXFLAGS = -std=c++17
LDFLAGS = -lncurses

all: snake

snake: main.cpp
	$(CXX) $(CXXFLAGS) -o snake main.cpp $(LDFLAGS)

clean:
	rm -f snake


CXX=g++
CXXFLAGS=-Wall -std=c++11

test: test.o dummy.o
	$(CXX) $(CXXFLAGS) -o test test.o dummy.o -lpfq
dummy.o: dummy.cpp dummy.h
	$(CXX) $(CXXFLAGS) -c dummy.cpp
test.o: main.cpp
	$(CXX) $(CXXFLAGS) -c test.cpp
clean:
	rm -rf *.o
distclean: clean
	rm -rf test

CXX=g++
CXXFLAGS=-Wall

test: test.o dummy.o
	$(CXX) $(CXXFLAGS) -o test test.o dummy.o -lpfq
dummy.o: dummy.cpp dummy.h
	$(CXX) $(CXXFLAGS) -c dummy.cpp
test.o: test.cpp
	$(CXX) $(CXXFLAGS) -c test.cpp
clean:
	rm -rf *.o
distclean: clean
	rm -rf test

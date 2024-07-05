# ## VERSION 1
# hello: main.cpp printhello.cpp factorial.cpp
# 	g++ -o hello main.cpp printhello.cpp factorial.cpp

# ## VERSION 2
# CXX = g++
# TARGET = hello
# OBJ = main.o printhello.o factorial.o

# $(TARGET): $(OBJ)
# 	$(CXX) -o $(TARGET) $(OBJ)

# main.o: main.cpp 
# 	$(CXX) -c main.cpp

# printhello.o: printhello.cpp
# 	$(CXX) -c printhello.cpp

# factorial.o: factorial.cpp
# 	$(CXX) -c factorial.cpp

# ## VERSION 3
# CXX = g++
# TARGET = hello
# OBJ = main.o printhello.o factorial.o 

# CXXFLAGES = -c -Wall
# #if you add -wall parameter, make instrcution will print all warning informatioin

# $(TARGET): $(OBJ)
# 	$(CXX) -o $@ $^ 
# #@ refers to the string before ":", ^ refers to the string after ":"
# %.o: %.cpp 
# 	$(CXX) $(CXXFLAGES) $< -o $@
# #< refers to the first file name after ":"(ps: ^ refers to all)

# .PHONY:clean
# #This statemen is made for the situation that the folder already has a file named "clean"
# clean: 
# 	rm -f *.o $(TARGET)

# ## VERSION 4
CXX = g++
TARGET = hello
SRC = $(wildcard *.cpp)
OBJ = $(patsubst %.cpp, %.o, $(SRC))

CXXFLAGES = -c -Wall

$(TARGET): $(OBJ)
	$(CXX) -o $@ $^ 
%.o: %.cpp 
	$(CXX) $(CXXFLAGES) $^ -o $@

.PHONY:clean
clean: 
	rm -f *.o $(TARGET)
# ## VERSION 1
# hello: main.cpp printhello.cpp factorial.cpp
# 	g++ -o hello main.cpp printhello.cpp factorial.cpp

# ## VERSION 2
CXX = g++
TARGET = hello
OBJ = main.o printhello.o factorial.o

$(TARGET): $(OBJ)
	$(CXX) -o $(TARGET) $(OBJ)

main.o: main.cpp 
	$(CXX) -c main.cpp

printhello.o: printhello.cpp
	$(CXX) -c printhello.cpp

factorial.o: factorial.cpp
	$(CXX) -c factorial.cpp

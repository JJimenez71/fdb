CXX = g++
CFLAGS = -std=c++11 -Wall -g

TARGET = myfirstdb
SRCS = repl.cpp main.cpp
OBJS = repl.o main.o

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) 
	@echo "Linking complete: myfirstdb created."

%.o: %.cpp
	$(CXX) $(CFLAGS) -c $< -o $@
	@echo "Compiled $< into $@."

clean:
	rm -f $(OBJS)

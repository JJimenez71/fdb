# -----CONFIG-----
CXX = g++
CFLAGS = -std=c++11 -Wall -g
LDFLAGS += -ledit

SRCDIRS = src

#-----SOURCE AND OBJECT DISCOVER-----
SRC := $(shell find $(SRCDIRS) -name '*.cpp')
OBJ := $(SRC:.cpp=.o)
DEPS := $(OBJ:.o=.d)

#-----TOP LEVEL TARGETS-----
.PHONY: all clean

fdb: $(OBJ)
	$(CXX) $(OBJ) $(LDFLAGS) -o $@

%.o: %.cpp
	$(CXX) $(CFLAGS) -MMD -MP -c $< -o $@

-include $(DEPS)

clean:
	$(RM) $(OBJS) $(DEPS) fdb


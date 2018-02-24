CC=g++
CFLAGS=-Wall -std=c++11 -lsfml-graphics -lsfml-window -lsfml-system
OBJECTS=main.o Source/Application.o Source/Creature.o Source/Random.o
TARGET=run

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) $(CFLAGS) -o $(TARGET)

%.o: %.cpp
	$(CC) $< $(CFLAGS) -c -o $@

clean:
	rm -rf $(TARGET) $(OBJECTS)

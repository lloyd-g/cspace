SOURCES = src/main.c
OBJECTS = $(patsubst %.c, build/%.o, $(notdir $(SOURCES)))



#build/%.o: src/%.c
#	$(CC) - $(CFLAGS) -c $< -o $@
all: main

main: $(OBJECTS)
	$(CC) $< -o $@

$(OBJECTS): $(SOURCES)
	$(CC) -c $< -o $@
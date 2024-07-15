objects = main.o
all: $(objects)
	$(CC) $^ -o main

# Syntax - targets ...: target-pattern: prereq-patterns ...
# In the case of the first target, foo.o, the target-pattern matches foo.o and sets the "stem" to be "foo".
# It then replaces the '%' in prereq-patterns with that stem
$(objects): %.o: %.c
	$(CC) -c $^ -o $@
#main.c:
#	echo "int main() { printf("hello"); return 0; }" > main.c

# Note: all.c does not use this rule because Make prioritizes more specific matches when there is more than one match.
#%.c:
#	touch $@

clean:
	rm -f  *.o main
CC = lcc -Wa-l -Wl-m -Wl-j

BIN = build/hello.gb
SRC = src/hello.c
MAP = build/hello.map
SYM = build/hello.sym

all: $(BIN)

$(BIN): $(OBJS)
	mkdir -p build
	$(CC) -o $(BIN) $(SRC)

clean:
	rm -f $(BIN) $(MAP) $(SYM)
	rmdir build

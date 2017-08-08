CC = lcc -Wa-l -Wl-m -Wl-j

BIN = hello.gb
SRC = hello.c
MAP = hello.map
SYM = hello.sym

all: $(BIN)

$(BIN): $(OBJS)
	$(CC) -o $(BIN) $(SRC)

clean:
	rm -f $(BIN) $(MAP) $(SYM)

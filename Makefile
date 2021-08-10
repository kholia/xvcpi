PROG=xvcpi
CFLAGS=-std=gnu99 -O3 -Wall

all: $(PROG)

$(PROG): $(PROG).o
	$(CC) -o $(PROG) -lpigpio -lrt $<

clean:
	rm -f $(PROG) *.o

deps:
	sudo apt-get install build-essential libusb-dev libftdi-dev wiringpi git cmake pigpio pigpio-tools git make

FC = gfortran
FFLAGS = -Wall -Wextra -O2

all: main

main: main.f90
	$(FC) $(FFLAGS) -o $@ $^

clean:
	rm -f main

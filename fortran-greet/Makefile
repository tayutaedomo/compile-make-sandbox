FC = gfortran
FFLAGS = -Wall -Wextra -O2
TARGET = main
SOURCES = greet.f90 main.f90

# Replacement: main.f90 greet.f90 -> main.o greet.o
OBJECTS = $(SOURCES:.f90=.o)

all: $(TARGET)

# main: main.o greet.o
#     $(FC) $(FFLAGS) -o main main.o greet.o
$(TARGET): $(OBJECTS)
	$(FC) $(FFLAGS) -o $@ $^

# main.o: main.f90
#     $(FC) $(FFLAGS) -c main.f90
# greet.o: greet.f90
#     $(FC) $(FFLAGS) -c greet.f90
%.o: %.f90
	$(FC) $(FFLAGS) -c $<

# clean:
#     rm -f main main.o greet.o
clean:
	rm -f $(TARGET) $(OBJECTS) *.mod

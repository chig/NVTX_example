all: nvtx_example

#FC=pgf90
FC = gfortran
OBJS = nvtx.o main.o

nvtx_example: $(OBJS)
	$(FC) -o nvtx_example $(OBJS) -L/usr/local/cuda/lib64 -lnvToolsExt

.SUFFIXES : .o .f90

.f90.o:
	$(FC) -c $<

clean:
	rm -f nvtx_example main.o nvtx.o nvtx.mod

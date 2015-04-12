NVCC = /usr/local/cuda/bin/nvcc

NVCC_FLAGS = -I/usr/local/cuda/include -L/usr/local/cuda/lib64

# make dbg=1 tells nvcc to add debugging symbols to the binary
ifeq ($(dbg),1)
	NVCC_FLAGS += -g -O0
else
	NVCC_FLAGS += -O3
endif

# make emu=1 compiles the CUDA kernels for emulation
ifeq ($(emu),1)
	NVCC_FLAGS += -deviceemu
endif


vector_max: vector_max.cu
	$(NVCC) $(NVCC_FLAGS) vector_max.cu -o vector_max -lcuda


clean:
	rm -f *.o *~ vector_add vector_max
	

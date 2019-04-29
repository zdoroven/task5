task5-exe-S: task5.o
	ld -melf_i386 -o task5-exe-S task5.o
task5.o:
	as -ahlsm=task5.lst --32 -gstabs+ -o task5.o task5.S
clean:
	rm *.o task5-exe-S *.lst
remake: clean task5-exe-S

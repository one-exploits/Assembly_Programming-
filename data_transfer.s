.data
	intdata:
		.int 100000
	ascii_data:
		.ascii "hellow arquam"
	intArray:
		.int 12,34,56,6754

.text
      .globl _start
_start:
	mov $10,%rax
	mov %rax,%rbx
	mov intdata,%rax
	mov $intdata,%rax
	mov %rax,%rbx
	#array value change here
	mov $0,%rcx
	mov $2,%rdx
	mov $999,%rax
	mov %rax,intArray(%rcx,%rdx,4)

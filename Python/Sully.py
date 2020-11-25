import os


def main():
	i = 5
	if (len(__file__) == 8):
		i = i + 1
	str = "import os%c%c%cdef main():%c	i = %d%c	if (len(__file__) == 8):%c		i = i + 1%c	str = %c%s%c%c	new = open(%cSully_{}.py%c.format(i - 1), %cw+%c)%c	new.write(str %c (10, 10, 10, 10, i - 1, 10, 10, 10, 34, str, 34, 10, 34, 34, 34, 34, 10, 37, 10, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10))%c	new.close()%c	if i > 1:%c		os.system(%cpython3 Sully_{}.py%c.format(i - 1))%c%c%cif __name__ == %c__main__%c:%c	main()%c"
	new = open("Sully_{}.py".format(i - 1), "w+")
	new.write(str % (10, 10, 10, 10, i - 1, 10, 10, 10, 34, str, 34, 10, 34, 34, 34, 34, 10, 37, 10, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10))
	new.close()
	if i > 1:
		os.system("python3 Sully_{}.py".format(i - 1))


if __name__ == "__main__":
	main()

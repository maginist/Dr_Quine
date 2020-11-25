def print_main(str):
	print(str % (10, 9, 37, 10, 10, 10, 10, 9, 34, str, 34, 10, 9, 10, 9, 10, 10, 10, 34, 34, 10, 9, 10, 10))


def main():
	str = "def print_main(str):%c%cprint(str %c (10, 9, 37, 10, 10, 10, 10, 9, 34, str, 34, 10, 9, 10, 9, 10, 10, 10, 34, 34, 10, 9, 10, 10))%c%c%cdef main():%c%cstr = %c%s%c%c%cprint_main(str)%c%c# Commentaire%c%c%cif __name__ == %c__main__%c:%c%cmain()%c%c# Hors fonction"
	print_main(str)
	# Commentaire


if __name__ == "__main__":
	main()

# Hors fonction

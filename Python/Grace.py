# Commentaire
STR = "# Commentaire%cSTR = %c%s%c%cMAIN = 'fd = open(%cGrace_kid.py%c, %cw+%c);fd.write(STR %c (10, 34, STR, 34, 10, 34, 34, 34, 34, 37, 10, 10, 10, 10));fd.close()'%cFUNCTION = exec(MAIN)%c%cFUNCTION%c"
MAIN = 'fd = open("Grace_kid.py", "w+");fd.write(STR % (10, 34, STR, 34, 10, 34, 34, 34, 34, 37, 10, 10, 10, 10));fd.close()'
FUNCTION = exec(MAIN)

FUNCTION

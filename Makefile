#Makefile 3: final example; most abstract and uncluttered

TARGET=myProg.exe
MODULES=file0.o file1.o file2.o file3.o
CFLAGS=-ansi -pedantic-errors -Wall -Wconversion
CC=g++

$(TARGET): $(MODULES)
	g++ $(MODULES) -o $(TARGET)

.PHONY: clean all

clean:
	@rm -f *.o $(TARGET)
	@echo "Directory has been cleaned" 
# The @ symbol will silence the command so that it doesnt print when executing

all: clean $(TARGET)


# Any targets that don't result in a file with the same name should be 
# a dependancy of .PHONY


# The way to specify the name of the makefile is with the ‘-f’ or ‘--file’ option
# (‘--makefile’also works).  For example, ‘-f altmake’ says to use the file altmake as the makefile.
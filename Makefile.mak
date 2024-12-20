all: prog
.PHONY: test clean

prog: main.o func.o
        gcc -o prog main.o func.o

main.o: main.c
        gcc -c main.c

func.o: func.c
        gcc -c func.c

test: prog
        
        echo "hello my fucking homie" > input.txt
        
        ./prog input.txt -r "hello" "hi" > output.txt
        ./prog input.txt -d "fucking" >> output.txt
        ./prog input.txt -i -f "sup " >> output.txt
        ./prog input.txt -i -b " buddy" >> output.txt

clean:
        rm -f prog *.o input.txt output.txt
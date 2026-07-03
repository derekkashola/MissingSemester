9, 1 hour lectures in this class.

May list tools to use, but now how to use - read/experiment on my own. Excercises provided.

What is the shell?
    
    'The textual interface to the computer - you can enter any commands you want, not limited by the design of a GUI, Voice/VR etc.'


What is the terminal?

    The GUI window of the shell.


Bash is the most common shell. Standard on Linux. zsh being on mac and some linux distros, compatible with 
bash. 
       
Windows does not have a bash compatible prompt. Will not be covered.


Shell can automate, easier/quicker to do more complicated tasks than with a GUI.

command structure:  program[argument] ex, echo Hello World -> prints Hello World into the terminal
                                          echo "Hello        World" -> Hello         World
                                          echo  Hello \ \ \ \ World -> Hello         World
Backslash is an escape character that says "don't treat the next character as special".
 ex. echo 'jons\'s world' -> jon's world


Important commands:

man - manual ( can also use --help for something more concise)

cd - change directory. 'cd .' is the current directory. 

        ex: cd bin/../bin/././../bin -> go to bin, higher directory, back to bin, to current, to current, higher directory, to bin


TAB in bash gives auto-complete - double pressing tab gives all possible options. 
    - type first few letters than tab to auto complete a path.


PATH - A system of variable to value mapping. Metadata: which user am i? etc.

which - shows location of a program
    -a prints all paths


ls - lists contents of a directory.


cat - prints out the contents of a file

sort - prints out the lines in sorted order. - Alphabetically(lexigraphically).

uniq - only prints out unique lines (only eliminates duplicates that are consecutive)
    uniq - u (sorts and eliminates duplicates)

head - n3 (prints from the start of the file, with n3 the first 3 lines)
tail - same as head, just from the end of a file

grep - searches inside file, for patterns. 
    grep 3 data -> 3,31,3 (from example nvim document)
    -r grep into deeply, into nested folders.

sed - a programmic file editor.
    ex sed -i 's/pattern/replacement/g' file

    This places all pattern with replacement in file. The -i indicates that we want the subsitutions to happen inline. The s/ is the way to express in the sed language that we want to do a substitution. 

        ex: sed -i 's/grep/jon/g' file.txt -This replacs all instances of 'grep' with 'jon'


glob - a type of pattern, similar to regular expression - a way to write a pattern of a path.
            * ~ {} / 


find - finds files. ex; find ~/Downloads -type f -name "*.zip" -mtime *30 (the *30 is the last 30 days) 

        find [path] ls -lh -> shows permissions and path.
        find ~ type f -size +100M -exec ls -lh () \; NOTE: -exec takes a command terminated with a 
            stand-a-lone ; (which is escaped by a '\') where {} is replaced with each matching file path by
                find.


        ex: Finds  any .py files with TODO items in them
            find . -name "*.py" -exec grep -l "TODO" {} \;


        -maxdepth sets a limit to the programs recursion. 
            Recursion: is when a function solves a problem by calling itself on a smaller version of the 
                        same problem, until it reaches a case simple enough to solve directly without
                        calling itself again.

            Base case: The smallest, simplest version of the problem, solved directly, with no further
                        recursive call.

            Recursive case: The function calls itself on a smaller or simpler piece of the problem, trusting
                            that the smaller call will correctly solve its piece, and then combines that 
                            result to solve the original problem.


awk - has it's own programming language built-in. It parses files. Let's you write over files you parsed.
        ex, awk '{print $2}' data = parses into records as columns. This will print only the second field.
                In the video white space is the seperator. 

            awk -F, '{print $2}; data : prints the second comma-separated column of every line

    Together we can do 'fancy' things like: 
        
                missing:~$ ssh myserver 'journalctl -u sshd -b-1 | grep "Disconnected from"' \
                | sed -E 's/.*Disconnected from .* user (.*) [^ ]+ port.*/\1/' \
                | sort | uniq -c \
                | sort -nk1,1 | tail -n10 \
                | awk '{print $2}' | paste -sd,
                postgres,mysql,oracle,dell,ubuntu,inspur,test,admin,user,root
            

 date > thedate.txt
    cat the date.txt -> prints current date
        > overwrites, >> appends

    if grep 2026 thedate.txt; then echo "It's 2026"; fi
        fi ends an if conditional

    while grep 2026 thedate.txt; do echo "it's still 2026; date > thedate.txt; done

    for varname in $(seq 1 2 10); do echo "$varname"; done

    seq 1 2 10 -> would print 1 through 10, every 2 numbers from 1. 1,3,5,7,9





































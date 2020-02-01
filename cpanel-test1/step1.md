In this test shell exercise, we're going to play around with the `find` command.

## Task

Let's first make sure that find exists on our environment, and is recognized as being present in one of the foldees defined by the $PATH environment variable:

`which find`{{execute}}

The path that you see there is the path that the system recognizes, and will use by default, whenever you use the `find` command by itself.

The find command in bash is quite powerful, and knowing the basics might save you some scripting.

What does it do? It “finds” files. By default, it outputs their path relative to where you ran find. But, in addition of providing you with advanced “filters” it actually allows you to run commands on each of those files.

You can target _any_ path to begin finding within, but one of the most common places to start from is the directory you're already in. This, in bash, is commonly represented by the shorthand: a single period (`.`). So, if we were to execute the find command on the current directory, with no other arguments or flags, what do you think would happen?

Let's find out: `find .`{{execute}}

That didn't help much, did it. But.. if you list the contents of this folder, you'll find out why: `ls`{{execute}}

So next, let's try something a little more interesting with the `find` tool.

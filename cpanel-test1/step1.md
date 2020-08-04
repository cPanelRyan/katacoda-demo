In this test shell exercise, we're going to play around with the `find` command.

## Before you start

Let's first make sure that find exists on our environment, and is recognized as being present in one of the foldees defined by the $PATH environment variable:

`which find`{{execute}}

The path that you see there is the path that the system recognizes, and will use by default, whenever you use the `find` command by itself.

Now, so we have the full picture of our current environment, let's see where exactly we _are_ right now.

`pwd`{{execute}}

Now you know where in the file system you are currently operating from.

## Introducing: 'find'

The find command in bash is quite powerful, and knowing the basics might save you some scripting.

What does it do? Surprise: **it finds files**. By default, it prints each _found_ file's path, in relation to the path that you ran find from. But, in addition of providing you with advanced "filters”, so-to-speak, it actually can even allow you to perform **commands** on each of the found files, should you wish to do so.

Things can get dicey pretty fast when you start playing with command execution in find, so let's start with the simple stuff.

## Your first find

You can target _any_ path to begin finding within, but one of the most common places to start from is the directory you're already in. This, in bash, is commonly represented by the shorthand: a single period (`.`). So, if we were to execute the find command on the current directory, with no other arguments or flags, what do you think would happen?

Let's find out: 

`find .`{{execute}}

That didn't help much, did it. But.. if you list the contents of this folder, you'll find out why: 

`ls`{{execute}}

There's no output because.. well, there's no files in the folder we're currently in.

So next, let's try something a little more interesting.

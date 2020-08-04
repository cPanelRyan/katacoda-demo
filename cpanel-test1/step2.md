So now, let's get the lay of the land.

## Your environment

We should probably start from the ground floor, aka the **root directory**, otherwise known as `/`.

The _easy_ way do this would be to simply use the `ls` command and find out what the root directory contains. We'll throw the `-l` flag ('long' list) in there just so we're getting the full details, too.

`ls -l /`{{execute}}

So, now we see what the base level of the file system looks like. But let's make things a little more difficult for ourselves. Let's do the same thing, but this time, we'll use _find_.

You might expect the command to simply be `find /`. You can try running that, if you're curious, but be prepared to use `Ctrl+C` to cancel out of your command's execution, otherwise you'll be watching scrolling output for a while.

This is because, by default, the `find` command finds _everything_ within the given path. So running `find /` by itself will start listing every single file that exists (technically only the files that are _visible_ to it, if we're being honest) in the entire file system.

## Setting Criteria

To simplify our results, we can tell the `find` command how _deep_ we want it to search. We do this by using the `-maxdepth #` argument. A depth of `1` means that we don't want to look any deeper than the directory we're starting from (`/`, in this case). Increasing that number increases the amount of subdirectories it will search within. So let's try this in its most basic form:

`find / -maxdepth 1`{{execute}}

That's a little cleaner, and it also gives us a nice, simple view of what paths exist at the base of our file system.

Note that, unlike some other tools from the command line, both "long" _and_ "short" options in `find` are prefaced with a single `-`, not the double-hyphen (`--`) you might often encounter.

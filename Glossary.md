**cat** - concatenates (combines) files and prints on the standard output
```
#Example: Open and read a file called myFile.txt
cat myFile.txt
```

**cd** - changes directory
```
#Example 1: cd by itself will re-route user to home directory.
cd
#Example 2: Go to a directory called /home/woodriir/241/
cd /home/woodriir/241
```

**chmod** - change file mode bits, i.e. change permissions for various users (current user, groups, and public)
```
#Example: Change the permissions on a directory called 'playground' so that a certain group can read it.
chmod r playground
```

**clear** - clears the terminal screen
```
#Example: Clear the screen for readability
clear
```

**curl** - a command to tranfer a URL from a server
```
#Example: transfer the link: https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fbestlifeonline.com%2Fcontent%2Fuploads%2F2018%2F06%2Fcat-meme-54-0-1024x1024.jpg&f=1&nofb=1
curl https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fbestlifeonline.com%2Fcontent%2Fuploads%2F2018%2F06%2Fcat-meme-54-0-1024x1024.jpg&f=1&nofb=1
```

**date** - returns the current date
```
#Example: print out the date
date
```

**df** - reports the file system disk space usage
```
#Example: Print out file system disk space usage stats
df
```



**dialog**



**du** - estimates the file space usage; recursive for directories
```
#Example 1: Find the usage for all files and directories
du

#Example 2: Find the usage for a file called rockows.txt
du rockows.txt
```

**echo** - displays a line of text; acts like a print statement
```
#Example: Print out "Hello :)"
echo "Hello :)"
```

**find** - searches for files in a directory hierarchy
```
#Example: Find any file in a directory called "dropbox"
find *
```

**head/tail** - outputs the first or last 10 lines of a file respectively.
```
#Example: Find the first and last lines of a text file called 'whoami.txt'
head whoami.txt
tail whoami.txt
```



**info** - reads documentation in Info format
```
```



**less** - does not read the entire input file; opposite of more
```
#Example: Open and read a file called README.md
less README.md
```

**ls** - lists directory contents; alphabetic by default
```
#Example: Find the names of all files and subfiles in a directory called "dropbox"
ls *
```

**man** - the system's manual pager which contains information about the various commands
```
#Example: Find information about the command 'ls'
man ls
```

**more** - a filter to page through text one screenful at a time
```
#Example: Only read one page's worth of text from a file called 'whoami.txt'
Command: more whoami.txt
```

**pwd** - a command to output the 'present working directory'
```
#Example: Find user's current directory.
pwd
```




**rlwrap**
```
```




**rm** - A command used to remove a file from the filesystem. Use the '-r' flag to remove recursively. Use the '-f' flag to force the operation without chekcing with the user.
```
#Example: Remove the folder called folderOne and all files within it.
rm -rf folderOne
```

**sort** - a function to sort lines of text files
```
#Example: create a sort function to sort unique characters
sort | uniq - c
```

**stat** - dipalys a file or file system status including information such as access, modification, and birth dates
```
#Example: find the status of a file called "whoami.txt"
stat whoami.txt
```

**touch** - command to change file timestamps by updating and modifying them to the current time
```
#Example: change the timestamp on a file called "whoami.txt" to the current time
touch whoami.txt
```

**uname** - prints system information; by default, prints kernel name
```Find what system user is using - output will be Linux by default
uname
```

**uniq** - command to report/omit repeated lines; checks for adjacent repeated lines
```
#Example: find unique lines in a sort
sort | uniq -c
```

**wc** - prints newline, word, and byte counts for each file and a total line for more than one file
```
#Example: find the information for a file called rockows.txt
wc rockows.txt
```

**wget** - a free utility for non-interactive download of files
```
#Example: add a file from https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fbestlifeonline.com%2Fcontent%2Fuploads%2F2018%2F06%2Fcat-meme-54-0-1024x1024.jpg&f=1&nofb=1
wget https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fbestlifeonline.com%2Fcontent%2Fuploads%2F2018%2F06%2Fcat-meme-54-0-1024x1024.jpg&f=1&nofb=1
```

**whoami** - a command to output user information
```
#Example: Find user information
whoami
```

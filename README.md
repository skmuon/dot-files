# dot-files

Collection of .config files for various applications

- vim (.vimrc)
- tmux (.tmux.conf)
- bash (.bashrc)
- git (.gitconfig, .git-prompt.sh)


# VIM Tips
```
 ^E  : Scroll the window down
 ^Y  : Scroll the window up
 ^F  : Scroll down one page
 ^B  : Scroll up one page
 H   : Move cursor to the top of the window
 M   : Move cursor to the middle of the window
 L   : Move cursor to the bottom of the window
 gg  : Go to the top of file
 GG  : Go to bottom of file
 
 ```
 

## Text Objects
 
 ```
 w  : Words
 s  : Sentences
 p  : Paragraphs
 t  : tags
 ```


## Motions
```
a  :  all
i  :  in
t  : 'til
f  :  find forward
F  :  Find backward
e  :  end
```

## Command
```
{number}{command}{text object or motion}

d  : delete (also cut)
c  : change (delete, then place in insert mode)
y  : yank (copy)
v  : visually select

Examples

diw : delete in word
caw : change all word
ciw : change in word
cw  : change word (from  the current cursor)
yi) : yank all the text inside the parantheses
di) : delete everthing inside the bracket
da) : delete everything including the bracket

```



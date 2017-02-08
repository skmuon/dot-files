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
dd : delete the current line
yy : yank the current line
D  : delete until end of line
C  : change until end of line
^  : move to the beginning of line
$  : move to the end of line
I  : move to begining of line and insert
A  : move to the end of line and insert
o  : insert new line above the current line and insert
O  : insert new line below current line and insert
p  : paste below current line
P  : paste above current line
u  : unod last action
^r : redo last undo 
mk : bookmark line (k can be any letter)
~k : go to bookmark (k can be any letter)
.  : Repeat last command

Examples

diw : delete in word
caw : change all word
ciw : change in word
cw  : change word (from  the current cursor)
yi) : yank all the text inside the parantheses
di) : delete everthing inside the bracket
da) : delete everything including the bracket
va" : visually select all inside double quotes including double quotes
```

## Macro 
```
A sequence of commands recorded to a register

Record a macro
  q{register}
  (do the things)
  q

Play a macro
  @{register}
```

## Plugins
```
vundle    : Plugin manager
nerdtree  : File drawer
ctrlp     : Fuzzy file finder
fugitive  : git tool
syntastic : syntax checker/linter
```


## Miscellaneous
```
:set      : Set value
:set(v)?  : Show current value of v
:buffers  : Show ths buffer list
:reg      : Show the register entries
```

# tmux

```
tmux new-sesson -s {session-name}
tmux attach {session-name}
tmux ls {list session-name}
```

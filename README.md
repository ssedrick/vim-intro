# Getting Started with ![Vim](https://upload.wikimedia.org/wikipedia/commons/4/4f/Icon-Vim.svg)

[toc]

## Why is it so hard?
![Editor Difficulty levels](https://i.warosu.org/data/g/img/0655/93/1524090199109.png)

## Setting up using this repo
If you want a quick and dirty vimrc that you can start from, simply copy the ./vimrc file to `~/.vimrc`. Open vim and you should be good to go. The first time you open vim, you will need to do `:PlugInstall` to install all the plugins

### Different modes
#### Normal Mode
Normal mode is the default mode. Vim always starts in Normal Mode
- Navigation
- One command edits
- Return to Normal by hitting `Esc`
- Can record macros

#### Insert Mode
- Most editors stay in this mode
- Hit `i` and you can stay in this mode, vim acts like VSCode/IntelliJ

#### Visual Mode
- Hit `v` or `V` to enter normal mode
- For highlighting

#### Command Mode
- Hit `:` to enter command mode
- `/` will also enter command mode for searching


## Cheatsheet
An online cheatsheet can be found [here](https://vim.rtorr.com/)

### Normal Mode

#### Navigation
`h` key goes &#9665;

`j` key goes &#9661;

`k` key goes &#9651;

`l` key goes &#9655;

---

`w` goes to next **w**ord

`b` goes **b**ack a word

`e` goes to **e**nd of a word

---

`0` goes to start of line (including whitespace)

`^` goes to start of line (after leading whitespace)

`$` goes to the end of line

`gg` goes to top of file

`shift + g` goes to bottom of file

---

Page down: `Ctrl + d`

Page up: `Ctrl + u`

Jump to middle of the pane: `Shift + M `

Jump to top of pane: `Shift + H`

Jump to bottom of page: `Shift + L`

Jump to line 256: `:256`

Almost all command can be prefixed with a number:
- `4j` go down 4 times
- `5dw` delete 5 words


Center line in page: `z, z`

#### Panes
Create vertical split `:vs`  (Vertical Split)

Create horizontal split `:sp` (Split)

Go to next pane: `Ctrl + w, Ctrl + w`

Go to [direction] pane: `Ctrl + w, h/j/k/l`


#### Normal Mode tricks
`shift + j`: bring the next line up to the current line

`u`: **u**ndo

`Ctrl + r`: **r**edo


#### Normal Mode Editing

`x` deletes the current charater, stays in Normal

Delete line: `d,d`

Delete word: `d,w`

`.` will repeat the last series of command


### Insert
There are a couple different ways to enter Inser mode

`i` starts insert mode between current highlighted character and previous

`a` starts insert mode between current highlighted character and next

`s` deletes the current character and goes to Insert

`o` opens for editing after the highlighted line

`shift + o` opens for editing the line before the highlighted line

`shift + i` opens editing at the beginning of the line

`shift + a` opens editing at the end of the line


### Visual
#### Entering
To enter visual mode, hit `v` or `shift + v`

`v` starts highlighting at cursor

`shift + v` highlights entire line

#### Copy/Paste
`y` will **y**ank to the copy buffer

`p` will **p**aste from the buffer between current highlighted character and next

`shift + p` will **p**aste from the buffer between current highlighted character and previous

**Note** If you highlight the whole line with `shift + v`, `p` will place the copy buffer after the current line
`shift + p` will place it above the current line

#### Copy to/from Clipboard

`"*y` will copy to the clipboard

`Cmd + i` will paste if you are in Insert Mode otherwise you will need to use `"*p`

#### Indenting
  After entering visual mode, you can use `shift + ,` to decrease indentation and `shift + .` to increase indentation


### Command
Enter command mode by hitting `:`

#### Saving and Quitting
`:e filename.ext` opens filname.ext for **e**diting

`:w` or `:w filename.ext` **w**rites the file. Adding the filename will write to that specific file

`:q` will **q**uit vim. You can also it `Ctrl + c` and it will tell you how to exit.

`:!cmd` will exit the  cmd from your PATH.

If you ever want to reload the buffer from disk, do `:e!`

The `!` forces the command to complete. Be careful when doing this.


#### Search
`/text` will search for the text. Hit enter to go to the next instance of the text.

##### Search and replace
`:%s/text/replace/gc`

From there, `y` will replace the highlighted instance, `n` will skip it, `q` will quit.

If you want to replace all, just end with `/g` not `/gc`


### Macros
#### On demand macros
Hitting `q, [a-z]` in Normal mode will  create a macro with the letter as the name.

1. Start recording by hitting `q,a`
1. Enter commands as you normally would
1. When you are done, enter normal mode and hit `q` to stop recording
1. Replay steps by hitting `@a`

Number modifiers work as expected

## Sessions
Vim allows for creating sessions:
`:mks` will save all window positions and files open. Use `vim -S Session.vim` to load the session back

## Configuration
Default file is `~/.vimrc`

### Plugins

Multiple different plugin managers. I typically use VimPlug

[VimAwesome](https://vimawesome.com/) site holds most plugins. Can search there.

### Remapping keys

You can remap keystrokes in your `vimrc` file to make common commands simpler.




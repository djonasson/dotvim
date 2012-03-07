Installation:

    git clone git://github.com/djonasson/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update


Misc.:

    It's probably a good idea to re-bind a key to the escape key since it's used
    all the time. You should chose a key that you can reach without moving your
    hands from their default position. For me, on my MS Natural Elite keyboard,
    this means the right popup menu key. It can be done by using xmodmap:

    xmodmap -e 'keycode 117=Escape'


Basic vim usage:

    Moving around etc.
    ==================
    h - move left
    l - move right
    j - move down
    k - move up
    fx - move the cursor to the next occurance of x
    Fx - move the cursor to the previous occurance of x
    tx - move the cursor to before the next occurance of x
    Tx - move the cursor to before the previous occurance of x
    w - move the cursor forward by a word
    b - move the cursor backward by a word
    0 - first column of line
    $ - last column of line
    ^ - first non-empty column of line
    g_ - last non-emtpy column of line
    Ctrl-e - up 1 line
    Ctrl-u - up 1/2 page
    Ctrl-f - up 1 page
    Ctrl-y - down 1 line
    Ctrl-d - down 1/2 page
    Ctrl-b - down 1 page
    H - top left
    M - middle left
    L - bottom left
    G - move cursor to the end of the file
    gg - move cursor to the beginning of the file
    gi - move to last edit position and switch to insert mode
    * - go to the next occurance of the word under the cursor
    # - go to the previous occurance of the word under the cursor
    :N - go to line number N

    i - insert mode before current position
    a - insert mode after current position
    o - insert line below current and enter insert mode
    O - insert line above current and enter insert mode
    I - jump to first blank character of current line and switch to insert mode
    A - jumb to last charachter of current line and switch to insert mode

    u - undo
    Ctrl-r - redo

    v - visual mode (character oriented)
    V - visual mode (line oriented)
    Ctrl-v - block visual mode (select rectangles of text)
    o (while selecting) - moves cursor to other corner of selection

    d - delete from cursor to position given by next command (ex. d$)
    dd - delete the current line
    D - delete rest of the current line
    c - same as d but enters insert mode after
    x - delete character under cursor
    X - delete character before cursor (Backspace)
    y - copy characters from cursor to position given by next command
    yy - yank the current line
    Y - yank the current line
    p - paste after cursor
    P - paste before cursor
    ]p - paste with auto-indentation
    s - substitute from cursor to position given by next command
    S - substitue line
    Ctrl-y - copy chars from line above (in insert mode)
    Ctrl-e - copy chars from line below (in insert mode)
    . - repeat last insertion or editing command
    "ayy - "yank" the current line into register "a".
    "ap - paste register "a"
    :registers - show registers

    :!command - execute the external command and show the output
    :r!command - execute the external command and insert the output

    Together with the selection commands you can use:
    iw - inner word
    aw - a word
    iW - inner WORD
    aW - a WORD
    etc.

    >> - indent the highlighted text
    << - un-indent the highlighted text

    Make a selection (multiple rows) with Ctrl-v and then hit "I". The text you
    insert will be inserted for each row when you exit insert mode.
    
    With Ctrl-v$ you can add text to the end of lines.

    Search, Replace, Autocomplete 
    =============================
    / - search forward
    ? - search backward
    n - repeat search forward
    N - repeat search backward

    :%s/old/new/gc - replace string in whole file, asking for confirmation
    :s/old/new/g - replace string in selection

    Ctrl-p - autocompletion (word, insert mode) 
    Ctrl-x - autocompletion (line, insert mode)
    Ctrl-l - autocompletion (line, insert mode)

    Marks (jump points) 
    ===================
    m{a-Z} - set mark (a-z this file, A-Z available over sessions)
    '{a-Z} - jump to mark (also works with `{a-Z}
    '' - back to position before jump

    Windows, Buffers & Tabs
    =======================
    :new - new window
    :q - close current window (close vim if last)
    :sp <filename> - split window horizontally
    :vsp <filename> - split window vertically
    :(v)sp N - split window, edit buffer N
    Ctrl-w {hjkl} - move between windows
    :on - close all windows but the active one (Ctrl-W o)

    :buffers - show buffer list
    :b N - switch to buffer N
    :bd - unload current buffer (remove from bufferlist)
    :bun - unload the buffer (leave in bufferlist)
    :w - write current buffer do disk
    :e - load file into buffer

    :tabnew - create new tab
    :tabe filename - open filename in a new tab
    gt - switch between tabs

    Macros
    ======
    q{0-9,a-Z} - start recording macro (stop by hitting q again)
    @a - replay the macro "a"
    @@ - repeat last played macro (ie. keep @ pressed to repeat multiple times)
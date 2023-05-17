# Nvim Todo:

- [X] fix harpoon -- use C-j not <leader>j
- ColorMyPencils replaced with <leader>cs [colorscheme] keymap. I'm fairly happy with it -- overwrites set.lua for some reason
- [X] Set default colorscheme by device, maybe make a device specific folder that git doesnt track?
- [X] set global statusline [set laststatus=3] by default in nvimrc -- also finish that teej video for everything else in that video
- [O] set no neck pain on startup, it automatically turns off if you open aother buffer and <leader>n is easy If I dont want it. -- decided against, weird behavior
- [X] fix undodir. Just make it static somewhere in nvim conf. they shouldent be *that* big -- I think It's fixed? Need to test current functionality on win
- [X] add keybind for fugitive GDiffsplit and some other commands
- [X] show diff in sign colunm
- [X] show invisibles -- progress, tab needs to be changed, and space doesnt always work :p
- [X] map scroll with mouse to scroll through undotree https://xkcd.com/1806/
- [X] use tabs not spaces -- disabling expandtab has issues. or maybe it's just rendering as ^I for somereason?
- [ ] fix TS syntax highlighting for for everything, and make it work for markdown? if possible
- [ ] Make indent on wrap the little down and right arrow, and the indent thing the |   ? That may be hard given spaces not true tabs...
-- not really possible - [ ] make <C-backspace> in edit mode do "<C-o>db" maybe B not b?
- Filetype specific things:
    - Markdown
        - [X] setlocal softwrap -- made global and on by default
        - [ ] setlocal spell lang+en_us
        - [ ] wordcount in statusline
        - [ ] highlighting for ==this==
        - [ ] trim trailing whitespace on save
        - [ ] autosave on stop typing. undotree will help, but still
    - py, c, rust
        - [ ] Change indent size? to only 2 or 4 spaces? or can you change how wide tabs draw?
- [ ] Github work trees plugin
LaTeX stuff
- [ ] https://www.youtube.com/watch?v=DOtM1mrWjUo Watch this, take notes.
- [ ] Fix copy and past from + buffer in visual mode
- [ ] setup latex for nvim, get a setup that can take notes very copmetently
- [X] vimtex -- just learn to use it better
- [X] Md to pdf via pandoc? maybe setup the same for latex?

### Future
- [ ] Is there a way to have a good session saver thing? so I can just launch into whatever session from the loading screen? also put some pixel art there saying nvim or something. Can it set the cd of the term? -- make it automatically cd the nvim direc to that proj
    - Dont worry about until I've changed terminal on windows, there may be a better solution there?
    - Maybe if you can setup the splash screen plugin to do that?
- [ ] Switch to Lazy.nvim. It seems nice

My devices personally
- [X] make it stay on lock screen longer before the display turns off, flaunt the gay
- [ ] Update Neovim across all my devices
- [X] Install Nerdfonts Fira code mono to all devices
- [X] install a better term on mu
- [ ] stylus nord theme google calendar
- [ ] stylus set nord theme for canvas
- [ ] get a pack of sticky notes and little bookmark stickies.
- [X] make win term slightly transparent with the nord blue, at like 95%. or just remove the invis background from colormypencils
- [ ] Look into b3 for win, as I would really love that. or just straight up dual boot to linux on Mu. Maybe arch? that would be pretty cool
- [ ] Update I3 on Romeo, the i3gaps in I3 release is out

# andersonfernandes dotfiles

![NeoVim config sample](/screenshot.png)

## Dependencies
You need to have installed this dependencies before continue:

- [zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [Python3](https://www.python.org/downloads/)
- [Nerd Font compatible font](https://github.com/ryanoasis/nerd-fonts#font-installation)
- [The Silver Searcher](https://github.com/ggreer/the_silver_searcher#installing)
- [Ctags](https://github.com/universal-ctags/ctags)

## Installation

Clone the repository:

```bash
git clone https://github.com/andersonfernandes/dotfiles ~/.dotfiles
```

Run the install script:

```bash
make install
```

## Update

Pull the updates:

```bash
cd ~/.dotfiles
git pull origin master
```

Update the NeoVim plugins:

```bash
make nvim_update
```

The update task will create a snapshot of the current plugins before install the new versions.
If you need to rollback to the previous state, run:

```bash
make nvim_plugins_rollback
```

## NeoVim keyboard mappings

| Keys                 | Action                                                                                   |
|----------------------|------------------------------------------------------------------------------------------|
| `<space>`            | `<leader>` key                                                                           |
| `<tab>`              | Word/Snnipet completion                                                                  |
| `<leader> + ev`      | Opens the neovim config file in a vertical split                                         |
| `<leader> + sv`      | Reloads the neovim config                                                                |
| `control + j`        | Switch to the below pane                                                                 |
| `control + k`        | Switch to the up pane                                                                    |
| `control + h`        | Switch to the left pane                                                                  |
| `control + l`        | Switch to the right pane                                                                 |
| `<leader> + vs`      | Creates an vertical split                                                                |
| `<leader> + hs`      | Creates an horizontal split                                                              |
| `<leader> + tn`      | Creates a new tab                                                                        |
| `<leader> + tq`      | Closes the current tab                                                                   |
| `K`                  | In **Visual mode** and with a block of code selected, moves the block **up**             |
| `J`                  | In **Visual mode** and with a block of code selected, moves the block **down**           |
| `<leader> + ut`      | Updates the tags file of the current directory using Ctags                               |
| `<leader> + w`       | Enables line wrapping                                                                    |
| `<leader> + nw`      | Disables line wrapping                                                                   |
| `<leader> + jc`      | Opens the files finder on the **./app/controllers/** folder                              |
| `<leader> + jm`      | Opens the files finder on the **./app/models/** folder                                   |
| `<leader> + js`      | Opens the files finder on the **./app/services/** folder                                 |
| `<leader> + jr`      | Opens the files finder on the **./app/repositories/** folder                             |
| `control + f`        | Prompt the :Ag command to find texts in the current folder                               |
| `control + p`        | Opens the files finder on the root of the project                                        |
| `control + b`        | Opens the list of active Buffers on the session                                          |
| `<leader> + <space>` | Toggles the NERDTree                                                                     |
| `<leader + f>`       | Toggles the NERDTree and locates the current file on the tree                            |
| `<leader> + tt`      | In a test file runs all tests in the current file, otherwise runs the last file tests    |
| `<leader> + tl`      | In a test file runs the test nearest to the cursor, otherwise runs the last nearest test |
| `<leader> + gs`      | Runs a Git Status using vim-fugitive                                                     |
| `<leader> + gh`      | In the merge conflicts panel, grabs the left side of the diff                            |
| `<leader> + gl`      | In the merge conflicts panel, grabs the right side of the diff                           |
| `<leader> + gc`      | Opens the fzf checkout menu                                                              |
| `pry<tab>`           | Adds a `require 'pry'; binding.pry` on the current line                                  |

## License
[MIT](https://choosealicense.com/licenses/mit/)

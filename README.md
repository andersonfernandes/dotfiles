# andersonfernandes dotfiles

![NeoVim config sample](/screenshot.png)

## Dependencies

- tmux, python3, ctags, zsh, git, curl
- [oh-my-zsh](https://ohmyz.sh/#install) with [powerlevel10k theme](https://github.com/romkatv/powerlevel10k#oh-my-zsh)
- [NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [Nerd Font compatible font](https://github.com/ryanoasis/nerd-fonts#font-installation)
- [The Silver Searcher](https://github.com/ggreer/the_silver_searcher#installing)

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
git pull origin main
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
| `<leader> + te`      | Opens telescope.nvim menu                                                                   |
| `control + f`        | Opens a live_grep menu                                                                   |
| `control + p`        | Opens the files finder on the root of the project                                        |
| `control + b`        | Opens the list of active Buffers on the session                                          |
| `<leader> + <space>` | Toggles the files tree                                                                   |
| `<leader + f>`       | Toggles the files tree and locates the current file on the tree                          |
| `<leader> + tt`      | In a test file runs all tests in the current file, otherwise runs the last file tests    |
| `<leader> + tl`      | In a test file runs the test nearest to the cursor, otherwise runs the last nearest test |
| `<leader> + gs`      | Runs a Git Status using vim-fugitive                                                     |
| `<leader> + gc`      | Opens the Telescope branches menu                                                              |
| `<leader> + gp`      | Runs a Git push with the -u flag                                                         |
| `<leader> + gpf`     | Runs a Git push with --force flag                                                        |
| `<leader> + gh`      | In the merge conflicts panel, grabs the left side of the diff                            |
| `<leader> + gl`      | In the merge conflicts panel, grabs the right side of the diff                           |
| `gd`                 | Go to definition                                                                         |
| `gr`                 | Go to references                                                                         |
| `<leader>rn`         | Open the CoC Rename input                                                                |

## License
[MIT](https://choosealicense.com/licenses/mit/)

# Dotfiles

## Requirements

Make sure `zsh` is your default shell, if not, set zsh as your login shell:

```sh
chsh -s $(which zsh)
```

# Install

```sh
/bin/bash -c "$(curl -fsSL https://thebeardydeveloper.com/setup)"
```

*OR*

Clone onto your laptop:
```sh
git clone git://github.com/ysdexlic/dotfiles.git ~/dotfiles
```

(Or, [fork and keep your fork
updated](http://robots.thoughtbot.com/keeping-a-github-fork-updated)).

Install [dot](https://github.com/ysdexlic/dot):

```sh
brew install ysdexlic/formulae/dot
```

Install the dotfiles with the boostrap flag `-b`:

```sh
env DOTRC=$HOME/dotfiles/dotrc dot -b
```

After the initial installation, you can run `dot` without the one-time variable
`DOTRC` being set (`dot` will symlink the repo's `dotrc` to `~/.dotrc` for
future runs of `dot`). [See
example](https://github.com/ysdexlic/dotfiles/blob/master/dotrc).

This command will create symlinks for config files in your home directory.
Setting the `DOTRC` environment variable tells `dot` to use standard
configuration options:

-   Exclude the `README.md` any other files files, which are part of
    the `dotfiles` repository but do not need to be symlinked in.
-   Give precedence to personal overrides which by default are placed in
    `~/dotfiles-local`

It will also install any dependencies needed (if the `-b` bootstrap flag is
passed), such as
[oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) and
[starship](https://starship.rs/) before installing the Vim plugins listed in
`vimrc.bundles`

# Make your own customizations

Create a directory for your personal customizations:

```sh
mkdir ~/dotfiles-local
```

Put your customizations in `~/dotfiles-local` appended with `.local`:

e.g. `~/dotfiles-local/aliases.local`

For example, your `~/dotfiles-local/aliases.local` might look like this:

```sh
# Productivity
alias todo='$EDITOR ~/.todo'
```

If you don't wish to install a vim plugin from the default set of vim plugins in
`.vimrc.bundles`, you can ignore the plugin by calling it out with `UnPlug` in
your `~/.vimrc.bundles.local`.

```vim
" Don't install vim-scripts/tComment
UnPlug 'tComment'
```

`UnPlug` can be used to install your own fork of a plugin or to install a shared
plugin with different custom options.

```vim
" Only load vim-coffee-script if a Coffeescript buffer is created
UnPlug 'vim-coffee-script'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

" Use a personal fork of vim-run-interactive
UnPlug 'vim-run-interactive'
Plug '$HOME/plugins/vim-run-interactive'
```

To extend your `git` hooks, create executable scripts in
`~/dotfiles-local/git_template.local/hooks/*` files.

## zsh Configurations

Additional zsh configuration can go under the `~/dotfiles-local/zsh/configs` directory. This
has two special subdirectories: `pre` for files that must be loaded first, and
`post` for files that must be loaded last.

## vim Configurations

Similarly to the zsh configuration directory as described above, vim
automatically loads all files in the `~/dotfiles-local/vim/plugin` directory. This does not
have the same `pre` or `post` subdirectory support that our `zshrc` has.

## What's in it?

Configs for:

- [zsh](https://ohmyz.sh/)
- [vim/neovim](http://www.vim.org/)
- [tmux](https://github.com/tmux/tmux/wiki)
- [git](http://git-scm.com/)
- [alacritty terminal](https://github.com/alacritty/alacritty)
- [coc (Conquer of Completion)](https://github.com/neoclide/coc.nvim)
- [starship prompt](https://starship.rs/)

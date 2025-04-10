# What's this ?
My .nvim folder with every plugin I use and my own annotated init.vim file

# Requirements

- neovim >=0.5
- GNU make
- nodejs (Optional but highly recommended, for javascript/typescript support, typescript, and prettier)

# Installation

- Clone this repo anywhere (I use it as a submodule in my [init-environment repo](https://github.com/stephanetrebel/init-environment), for instance).
- Use GNU make:

```bash
$ make install
```

## Plugin Installation

Once the configuration is in place:

Install all plugins via vim-plug:

```bash
nvim --headless +PlugInstall +qall
```

This will pull down all plugins declared in init.vim. You can also do it manually from within nvim:

```vim
:PlugInstall
```

CoC (Conquer of Completion)

CoC is the Language Server Protocol (LSP) integration for Neovim. It's what powers things like autocomplete, go-to-definition, etc.

Recommended CoC Extensions :

Install them with:

```bash
nvim --headless +CocInstall\ coc-tsserver coc-prettier coc-json coc-html coc-css +qall
```

Or from inside nvim:
```vim
:CocInstall coc-tsserver coc-prettier coc-json coc-html coc-css
```

Some popular extensions:
| Extension	| Description |
| --- | --- |
| coc-tsserver	| TypeScript and JavaScript support |
| coc-prettier	| Format code with Prettier |
| coc-json | JSON autocomplete and linting
| coc-html	| HTML support |
| coc-css	 | CSS support |

Tip: You can list installed extensions with

```vim
:CocList extensions
```

- For Typescript, install typescript globally (`npm install -g typescript`) so that Coc can use it. You can also rely on a locally installed (project based) typescript but to benefit from all the tsserver API I find it better to consistently use a global one.
- For Prettier automatic formatting, install prettier globally (`npm install -g prettier`)
- Don't forget to review the init.vim file ! I took some time to comment why I added stuff here and there's a lot of little things so feel free to own the file. That's what Vim is about after all: owning your editor :)
- Remember that `:help` is your friend. If you don't understand a setting, or a command, just `:help` it !

Enjoy !

# Credits

All the vim community that helped a late vimer like me take over one of the most
powerful — albeit challenging — text editor.

Special mentions:

- http://learnvimscriptthehardway.stevelosh.com/
- [Using GNU Stow to manage your dotfiles](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)

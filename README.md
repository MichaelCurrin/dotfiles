# Dotfiles
> Samples from my shell configs for Bash/ZSH and macOS/Linux

[![GitHub tag](https://img.shields.io/github/tag/MichaelCurrin/dotfiles?include_prereleases=&sort=semver)](https://github.com/MichaelCurrin/dotfiles/releases/)
[![License - MIT](https://img.shields.io/badge/License-MIT-blue)](#license)


I created this repo as content for my **Dotfiles** post series on [dev.to](https://dev.to). See [Part 1](https://dev.to/michaelcurrin/dotfiles-to-make-your-shell-awesome-1pa1) of my series.


## Configs

Links to files in this repo:

Name                                | Description
---                                 | ---
[.shellrc](/.shellrc.sh)            | Content for Bash config `~/.bashrc` or ZSH config `~/.zshrc`. 
[.aliases](/.aliases.sh)            | Shell aliases for Bash or ZSH. Add to `~/.bashrc` or `~/.zshrc` file, or `~/.aliases` (provided you load it in your RC file).
[.gitconfig](/.gitconfig.toml)      | Global git config values for `~/.gitconfig` - a user-wide config known to git.
[.gitignore](/.gitignore.sh)        | Global git ignore values for `~/.gitignore` - a user-wide git ignore file which git will recognize if you set it up as `core.excludesfile` in your `.gitconfig`.

PS. I named these files in GitHub with extensions, in order to get proper sytanx highlighting.


## Background

Let me give you an idea of what development I do on a daily basis. You'll see the configs fit into these areas.

I am a professional programmer. I use both Bash and ZSH on both macOS and Linux laptops.

I program in Python and JavaScript mostly, with some shell scripting to setup and run things. I dabble in Deno, NPM, Go, Rust, Ruby and other tools and languages. I need to make sure these are installed and configured properly.

I use git and GitHub daily for most of my projects.

I love automation and shortcuts - so I have a lot of shell aliases and git aliases to share.


## Contributing

Contributions are welcome - add a Pull Request or create an issue.


## License

Released under [MIT](/LICENSE) by [@MichaelCurrin](https://github.com/MichaelCurrin).

Please keep the original license in the repo as `LICENSE-source` if you fork this or copy a significant portion of this.

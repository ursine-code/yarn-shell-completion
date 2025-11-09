# Yarn Shell Completion

Shell completion for [Yarn 4+ (Berry)](https://yarnpkg.com/) - supports both Bash and Zsh.

## Features

- Command completion (`add`, `install`, `run`, etc.)
- Flag completion (`--help`, `--verbose`, etc.)
- Dynamic generation from `yarn help`
- Works with Yarn 4.x and above

## Installation

### Homebrew (macOS/Linux)

```bash
# Tap the Ursine Code repository
brew tap minademian/ursine
# Install from tap
brew install yarn-shell-completion

# Install directly via Homebrew
brew install minademian/ursine/yarn-shell-completion
```

After installation, ensure your shell is configured for Homebrew completions:

**Bash**

```bash
# Add to ~/.bash_profile or ~/.bashrc (if not already present)
if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  fi
fi
```

**Zsh**

```zsh
# Add to ~/.zshrc (if not already present)
if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
  compinit
fi
```

Restart your shell or run `source ~/.bashrc` / `source ~/.zshrc`.

### Manual Installation

**Bash**

```bash
sudo cp completions/yarn /usr/local/etc/bash_completion.d/yarn
# Then source it in your ~/.bashrc
source /usr/local/etc/bash_completion.d/yarn
```

**Zsh**

```bash
mkdir -p ~/.zsh/completions
cp completions/_yarn ~/.zsh/completions/
# Add to ~/.zshrc
fpath=(~/.zsh/completions $fpath)
autoload -Uz compinit && compinit
```

## Requirements

- Yarn 4.x or higher
- Bash 4.0+ or Zsh 5.0+
- For Homebrew installation: [Homebrew](https://brew.sh/)

## Troubleshooting

### Completion not working after installation

**Zsh users**: Rebuild the completion cache

```zsh
rm -f ~/.zcompdump*
compinit
```

**Bash users**: Ensure bash-completion is installed

```bash
brew install bash-completion@2  # macOS
# or
apt-get install bash-completion  # Linux
```

### Check if completion is loaded

**Zsh**

```zsh
type _yarn
# Should output: _yarn is a shell function
```

**Bash**

```bash
type _yarn_completion_main
# Should output: _yarn_completion_main is a function
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Test your changes thoroughly
4. Commit your changes (`git commit -m 'Add some amazing feature'`)
5. Push to the branch (`git push origin feature/amazing-feature`)
6. Open a Pull Request

## License

MIT License - see [LICENSE](LICENSE) file for details.

## Author

Mina Demian - [mina@minademian.com](mailto:mina@minademian.com)

## Acknowledgments

- Built for [Yarn Berry](https://yarnpkg.com/) (v4+)
- Inspired by the need for better Yarn completion support

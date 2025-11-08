# Yarn 4+ Shell Completion

Bash and Zsh completion for Yarn 4 (Berry).

## Features

- Command completion
- Flag completion
- Dynamic generation from `yarn help`

## Installation

### Bash

```bash
# Copy to bash completion directory
sudo cp completions/yarn.bash /usr/share/bash-completion/completions/yarn

# Or for user-only install
mkdir -p ~/.local/share/bash-completion/completions
cp completions/yarn.bash ~/.local/share/bash-completion/completions/yarn

# Then add to ~/.bashrc
source ~/.local/share/bash-completion/completions/yarn
```

### Zsh

```bash
# Copy to zsh completion directory
sudo cp completions/yarn.zsh /usr/share/zsh/site-functions/_yarn

# Or for user-only install
mkdir -p ~/.zsh/completions
cp completions/yarn.zsh ~/.zsh/completions/_yarn

# Add to ~/.zshrc
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit
```

### Using Homebrew (macOS)

```bash
brew install <your-username>/tap/yarn-completion
```

## Requirements

- Yarn 4.x+
- Bash 4.0+ or Zsh 5.0+

## Contributing

Pull requests welcome!

## License

MIT License - see [LICENSE](LICENSE) file for details.

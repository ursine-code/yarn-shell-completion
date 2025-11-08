# Yarn 4+ Shell Completion

Bash and Zsh completion for Yarn 4 (Berry).

## Features

- Command completion
- Flag completion
- Dynamic generation from `yarn help`

## Installation

### Bash

```bash
# Add to ~/.bashrc or ~/.bash_profile
if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

# Then reload
source ~/.bashrc
```

### Zsh

```shell
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

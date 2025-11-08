# Testing the Yarn Shell Completion Locally

To test the Yarn shell completion scripts locally without installing them system-wide, you can follow these steps:

1. Test the zsh completion directly from your repo:

```shell
# In a clean zsh shell (zsh -f)
cd /path/to/yarn-shell-completion

# Add completions dir to fpath
fpath=($(pwd)/completions $fpath)

# Initialize completion
autoload -U compinit && compinit

# Manually test the _yarn file loads without errors
source completions/_yarn

# Check if _yarn function is defined
type _yarn

# Test completion
yarn <TAB>
yarn --<TAB>
```

2. Test with bashcompinit (since zsh wraps bash):

```bash
# In the same clean shell, manually test the bash -> zsh bridge
autoload -U +X bashcompinit && bashcompinit

# Source bash completion
source completions/yarn

# Verify bash function exists
type _yarn_completion_main

# Now source the zsh wrapper
source completions/_yarn

# Test again
yarn <TAB>
yarn --<TAB>
```

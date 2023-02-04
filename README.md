<p align="center">
  <a href="#gh-dark-mode-only" target="_blank" rel="noopener noreferrer">
    <img src=".github/assets/night.svg" alt="git-extra-profiles.plugin.zsh">
  </a>

  <a href="#gh-light-mode-only" target="_blank" rel="noopener noreferrer">
    <img src=".github/assets/day.svg" alt="git-extra-profiles.plugin.zsh">
  </a>
</p>

Plugin for managing multiple git profiles in a single `.gitconfig` file.

### Preview

![](.github/assets/preview.gif)

## Installation

### Using Oh-My-Zsh

```bash
git clone https://github.com/baliestri/git-extra-profiles.plugin.zsh.git $ZSH_CUSTOM/plugins/git-extra-profiles.plugin.zsh
```

```bash
# ~/.zshrc

plugins=(... git-extra-profiles)
```

### Using Zinit

```bash
zinit light baliestri/git-extra-profiles.plugin.zsh
```

### Using Zi

```bash
zi light baliestri/git-extra-profiles.plugin.zsh
```

### Using Zgenom

```bash
zgenom load baliestri/git-extra-profiles.plugin.zsh
```

## Usage

### Set your profiles

```bash
# ~/.zshrc

export GIT_EXTRA_PROFILES="work" # separated by spaces
```

```toml
# ~/.gitconfig

[user]
  name = "Some Name"
  email = "your-personal-email@example.com"

[profile "work"]
  name = "Some Name"
  email = "your-work-email@enterprise.com"
  path = "/home/username/projects/work"
```

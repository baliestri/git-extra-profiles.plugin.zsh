export GIT_EXTRA_PROFILES="${GIT_EXTRA_PROFILES:-"work"}"

function __git_profile_switch() {
  if (( ! $+commands[git] )); then
    return 1
  fi

  local current_dir="$(pwd)"
  local -A profiles_paths=()

  for profile in ${GIT_EXTRA_PROFILES}; do
    local profile_path=$(git config --global --get "profile.${profile}.path")

    if [[ -n "${profile_path}" ]]; then
      profiles_paths[${profile}]="${profile_path}"
    fi
  done

  for profile in ${(k)profiles_paths}; do
    if [[ "${current_dir}" =~ "${profiles_paths[${profile}]}" ]]; then
      local current_profile="${profile}"
      break
    fi
  done

  if [[ -z "${current_profile}" ]]; then
    unalias git 2>/dev/null
    return
  fi

  local git_name=$(git config --global --get "profile.${current_profile}.name")
  local git_email=$(git config --global --get "profile.${current_profile}.email")

  alias git="git -c user.name='${git_name}' -c user.email='${git_email}'"
}

add-zsh-hook chpwd __git_profile_switch

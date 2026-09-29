GIT_ROOT=$(git rev-parse --show-toplevel)
eph_env=$(cat "$GIT_ROOT/.ephemeral-envs" | fzf)
env_name=$(echo "$eph_env" | awk '{print $1}')
eval $(echo "$eph_env" | sed -E 's/[^ ]+ /export /')
echo "Loaded: $env_name"

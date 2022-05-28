plugins=()
while read -r line; do
    if [[ "$line" != '#'* ]]; then
        read -A list <<<"$line"
        plugins+=("${list[@]}")
    fi
done <~/.zshrc.pluglist

[ -x "$(command -v xclip)" ] || [ -x "$(command -v wl-copy)" ] && plugins+=(copybuffer copyfile copypath)
[ -x "$(command -v rsync)" ] && plugins+=(rsync)

[ -x "$(command -v docker)" ] && plugins+=(docker)
[ -x "$(command -v yarn)" ] && plugins+=(yarn)
[ -x "$(command -v rustc)" ] && plugins+=(rust)
[ -x "$(command -v pip)" ] || [ -x "$(command -v pip3)" ] && plugins+=(pip)

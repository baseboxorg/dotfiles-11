###########
# Solus
###########

# Software Management
in() { sudo eopkg -y it "$@"; }
se() { eopkg -y sr "$1"; }
update() { sudo eopkg -y up; }

# Alias git with hub
if [ -f /usr/bin/hub ]; then
    alias git=hub
fi

# Alias Visual Studio Code
if [ -f /usr/bin/code-oss ]; then
    code() { code-oss $1}
fi

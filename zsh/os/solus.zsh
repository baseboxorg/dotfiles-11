###########
# Solus
###########

# Software Management
in() { sudo eopkg -y it "$@"; }
se() { eopkg -y sr "$1"; }
update() { sudo eopkg -y up; }

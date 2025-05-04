#!/bin/bash
#
# -------------------------------
# Docker Alias Installer Script
# Version: 0.1
# Author: Silvernail
# Date: 5.4.2025
# -------------------------------

# Determine shell config file
if [[ -n "$ZSH_VERSION" ]]; then
    SHELL_RC="$HOME/.zshrc"
else
    SHELL_RC="$HOME/.bashrc"
fi

echo "This script will install helpful Docker aliases into $SHELL_RC"
read -p "Do you want to continue? (y/n): " confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then
    echo "Installing Docker aliases..."

    cat <<'EOF' >> "$SHELL_RC"

# ---- Docker Aliases (Silvernail) v0.1 ----
alias dcu='docker-compose up -d'                 # Compose Up
alias dcd='docker-compose down'                  # Compose Down
alias dcb='docker-compose build'                 # Compose Build
alias dcp='docker-compose pull'                  # Pull updated images
alias dcr='docker-compose run --rm'              # One-off container
alias dps='docker ps'                            # List running containers
alias dpa='docker ps -a'                         # List all containers
alias di='docker images'                         # List images
alias dip='docker image prune -f'                # Prune dangling images
alias dvp='docker volume prune -f'               # Prune unused volumes
alias dsp='docker system prune -af'              # Full system cleanup

# Extras
alias dlog='docker logs -f'                      # Follow logs of a container
alias dexec='docker exec -it'                    # Exec into a running container
alias dstop='docker stop $(docker ps -q)'        # Stop all running containers
alias drm='docker rm $(docker ps -aq)'           # Remove all containers
alias drmi='docker rmi $(docker images -q)'      # Remove all images

# Help for docker aliases
alias dhelp='echo "
Docker Alias Help (v0.1 - Silvernail)
-------------------------------------
dcu     = docker-compose up -d
dcd     = docker-compose down
dcb     = docker-compose build
dcp     = docker-compose pull
dcr     = docker-compose run --rm
dps     = docker ps
dpa     = docker ps -a
di      = docker images
dip     = docker image prune -f
dvp     = docker volume prune -f
dsp     = docker system prune -af
dlog    = docker logs -f <container>
dexec   = docker exec -it <container> bash
dstop   = docker stop \$(docker ps -q)
drm     = docker rm \$(docker ps -aq)
drmi    = docker rmi \$(docker images -q)
"'
# ---- End Docker Aliases ----

EOF

    echo "Docker aliases installed. Reload your shell or run: source $SHELL_RC"
else
    echo "Aborted. No changes made."
fi

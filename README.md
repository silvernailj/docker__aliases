# docker_aliases
A simple, interactive script to install Docker and Docker Compose aliases into your shell config (`.bashrc` or `.zshrc`).

## Installation

Clone and run manually
```bash
git clone https://github.com/silvernailj/docker_aliases.git
cd docker_aliases
bash docker_aliases.sh
```

Once installed, either restart your shell or run:
```bash
source ~/.bashrc   # or source ~/.zshrc
```

## Aliases Included

| Alias  | Command                             | Description                        |
|--------|-------------------------------------|------------------------------------|
| dcu    | `docker-compose up -d`              | Start services in detached mode    |
| dcd    | `docker-compose down`               | Tear down the stack                |
| dcb    | `docker-compose build`              | Rebuild containers                 |
| dcp    | `docker-compose pull`               | Pull latest image versions         |
| dcr    | `docker-compose run --rm`           | Run one-off commands               |
| dps    | `docker ps`                         | List running containers            |
| dpa    | `docker ps -a`                      | List all containers                |
| di     | `docker images`                     | List images                        |
| dip    | `docker image prune -f`             | Prune dangling images              |
| dvp    | `docker volume prune -f`            | Prune unused volumes               |
| dsp    | `docker system prune -af`           | Full system cleanup                |
| dlog   | `docker logs -f <container>`        | Follow logs                        |
| dexec  | `docker exec -it <container>`       | Exec into a running container      |
| dstop  | `docker stop $(docker ps -q)`       | Stop all running containers        |
| drm    | `docker rm $(docker ps -aq)`        | Remove all containers              |
| drmi   | `docker rmi $(docker images -q)`    | Remove all images                  |

## License

MIT – use freely and contribute if you improve it!

# Compose
A Docker Compose manager that eliminates the need to navigate into project directories. It also includes basic shell completions for Bash and Zsh.

# Installation

```sh
git clone https://github.com/therealcarneiro/compose.git
cd compose
sudo make install
```

# Usage
Compose will look in the $COMPOSE_DIR (defaults to /docker) directory for the directories containing your projects.

compose COMMAND [--args] PROJECT_NAME

```
~ compose --help

Usage: compose COMMAND [ARGS] PROJECT_NAME

	Includes all standard docker-compose commands, plus additional ones.
	Run docker-compose --help for more information about the standard commands.


Additional Commands:
	status [no args]              -- Displays information about the projects,
	                                 including their names and statuses (running,
	                                 down, exited).

	full-restart PROJECT_NAME     -- Performs a full restart by running compose
	                                 down followed by compose up -d

	ls [no args]                  -- Lists Docker Compose projects


Example Usage:
	compose logs traefik          -- Display logs for traefik compose project
	compose logs --follow traefik -- Performs a full restart by running compose down
	                                 followed by compose up -d

	compose full-restart traefik  -- Performs a full restart on traefik compose project

	compose status                -- Displays information about the projects
	compose ls                    -- Lists Docker Compose projects
```

## Examples

Check the logs of the traefik compose project
```sh
compose logs traefik
```

You can also include the arguments you would pass to docker-compose directly in compose
```sh
compose logs --follow traefik
compose up -d traefik
```

Full restart (runs compose down followed by compose up -d)
```sh
compose full-restart apache2
```

Displays information about the projects, including their names and statuses (running, down, exited).
```sh
compose status
```

# TODO
- Git integration

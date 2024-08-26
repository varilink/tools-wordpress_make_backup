# Tools - WordPress Make Backup

David Williamson @ Varilink Computing Ltd

-----

Docker Compose based tool that makes the database and WordPress archive files within the `backup/` directory of a project's Docker Compose repository so the the Varilink [Tools - WordPress](https://github.com/varilink/tools_wordpress) tool can use them to restore to a simulation of the project's WordPress site running on the local, client desktop. It sources the files restored from a backup created by the Varilink [Tools - WordPress Restore](git@github.com:varilink/tools_wordpress-restore.git) tool on the *hub* host to do this.

## Contents

| File(s) / Directory or Director                            ies | Description                                                                    |
| -------------------------------------------------------------- | ------------------------------------------------------------------------------ |
| `docker-compose.yml`<br>`docker-entrypoint.sh`<br>`Dockerfile` | Configuration for this tool, which is implemented as a Docker Compose service. |

## Installation

Install as a submodule of the Docker Compose repository for a WordPress development project at the path `tools/wordpress-make-backup` and concatenate this tool's `docker-compose.yml` file into the `COMPOSE_FILE` paths for the project.

Build this tool's image:

```sh
docker-compose build wp-make-backup
```

## Usage

Run this tool:

```sh
docker-compose run --rm -e SUBDOMAIN=$SUBDOMAIN wp-make-backup
```

You must provide the value for `$SUBDOMAIN` on the command line; for example, *www*, *staging*, *test*, etc. Remember that first there must be restored files present on the *hub* host that have been created using the Varilink [Tools - WordPress Restore](git@github.com:varilink/tools_wordpress-restore.git) tool.

# Service Builder DevContainer

## Overview

This project creates a VS Code Dev Container on your local machine for data access service. It

- Installs `Service Builder Extension Pack`, the development tool for data access services. 
- Installs `Database Client Extension`, a database tool for PostgreSQL, MySQL and others.

  [Database Client Quick Start](https://database-client.com/#/document)


## Get Started

### Prerequisites

- Docker installed locally.
- Git and Git Bash installed locally.
- VS Code installed locally.
- Familiar with VS Code and Dev Container.

[VS Code DevContainer Overview](https://code.visualstudio.com/docs/devcontainers/containers)

> Note: Open a (Git) bash window. All bash commands in the following are issued in this window.

### Clone This Project

Clone this project with the following commands:

```sh
git clone git@github.com:bklogic/devcontainer.git builder
cd builder
```

### Open Project in VS Code

Open VS Code with the following command in bash window:

```
code .
```

> Note: Install Dev Container extension when prompted. It is critical to have the Dev Container extension installed.

### Reopen Project in Development Container

- Press F1 to invoke the Command Palette.
- Type and select "`Dev containers: Reopen in Container`".

    [Quick start: Open an existing folder in a container](https://code.visualstudio.com/docs/devcontainers/containers#_quick-start-open-an-existing-folder-in-a-container)

This step

- Creates and starts Dev Container `rdas`.
- Creates and starts development server `devtime`.
- Creates and starts MySQL database `mysql`.
- Creates and starts PostgreSQL database `postgres`.
- Installs `Service Builder Extension Pack`, the development tool for data access services. 
- Installs `Database Client`, a database tool for PostgreSQL, MySQL and others.

    [Database Client Quick Start](https://database-client.com/#/document)

This step complets when the `Service Builder` icon ![service-builder](.images/service-builder-icon.png) and the `Database Client` icon ![database-client](.images/db-client-icon.png) appear on the `Activity Bar`, as shown in the following:

![](./.images/OpenProjectInContainer.png)

In addition, the `docker ps` command should list:

- rdas, the dev container
- devtime, the DAS development server
- mysql, MySQL service preloaded with `classicmodels` sample database and
- postgres, PostgreSQL service preloaded with `pagila` sample database.

### Activate Service Builder

Click the `Service Builder` icon ![service-builder](.images/service-builder-icon.png) on the `Activity Bar`. The `Service Builder` view opens:

![](./.images/ActivateServiceBuilder.png)

### Register Service Builder with Dev Server


## Troubleshoot

In case of error when openning the project in container, 

- list the docker container:

    ```
    docker ps -a
    ```

- remove dev container `rdas`, if exists

    ```
    docker rm rdas
    ```

- reopen project in container


## File Structure

### The `.devcontainer` Folder

- `devcontainer.json`

  This file defines the Dev Container.

- `docker-compose.yml`

  This files configures the DevContainer, the DevServer, a MySQL database and a PostgreSQL database. 

### The `.init` Folder

- `mysql`

  This subfolder folder contains the `SQL` scripts to initialize the MySQL database. By default, it installs the `classicmodels` sample database.

- `postgres`

  This subfolder folder contains the `SQL` scripts to initialize the PostgreSQL database. By default, it installs the `pagila` sample database.




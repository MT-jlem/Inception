# Inception


## Project Summary

Inception is a System Administration exercise aimed at enhancing your knowledge and skills in the field of system administration using Docker. This project revolves around creating a complex infrastructure of services within a virtual machine environment.

## Table of Contents

- [General Information](#general-information)
- [Requirements](#requirements)
- [Setup and Configuration](#setup-and-configuration)
- [Bonus Features](#bonus-features)
- [Usage](#usage)

## General Information

The Inception project requires you to set up a comprehensive infrastructure using Docker within a virtual machine. It is designed to challenge your system administration skills by covering various aspects of containerization, networking, and service orchestration.

## Requirements

The core requirements of the project include:

- Utilizing a virtual machine for the project.
- Creating Docker containers for various services, each in a dedicated container.
- Developing custom Dockerfiles for each service.
- Building Docker images using the Docker Compose utility.
- Setting up NGINX with TLSv1.2 or TLSv1.3 in a dedicated Docker container.
- Configuring WordPress with php-fpm and MariaDB in separate Docker containers.
- Managing data using volumes for the WordPress database and website files.
- Establishing a Docker network to connect your containers.
- Ensuring container restart in case of a crash.
- Avoiding usage of hacks like infinite loops for container commands.
- Implementing proper Docker image versioning and avoiding pre-built images.
- Using environment variables for configuration.

## Setup and Configuration

For detailed setup and configuration instructions, please refer to the project [subject](https://github.com/MT-jlem/Inception/blob/master/en.subject.pdf) provided.


## Bonus Features

The project offers the opportunity to implement bonus features, including:

- Setting up a Redis cache for your WordPress website.
- Configuring an FTP server container.
- Creating a static website in a language of your choice (except PHP).
- Implementing Adminer for database management.
- Adding a service of your choice to enhance your infrastructure.


## Usage

To use the Inception project effectively, follow the [Makefile](https://github.com/MT-jlem/Inception/blob/master/Makefile) provided . It will include commands, and any additional details necessary to run your infrastructure.
```bash
# Example usage commands
make up
```

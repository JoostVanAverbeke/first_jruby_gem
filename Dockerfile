FROM jruby:9

# Install git, because silvio_core uses git to retrieves repositories
# Install jq, (jq is a lightweight and flexible command-line JSON processor) see https://linuxhint.com/bash_jq_command/
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git && \
	apt-get install -y jq

COPY stages stages
RUN chmod -R 755 /stages

WORKDIR /app

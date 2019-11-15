FROM alpine:edge

# Add repos
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories

# Add basics first
RUN apk update && apk upgrade

RUN apk add bash python3 py3-pip nodejs npm

RUN npm install @corpoflow/web2cast -g
RUN pip3 install catt

# Create the bootstrap dir
RUN mkdir /bootstrap

# Copy the initialize file and make it executable
ADD ./initialize.sh /bootstrap/
RUN chmod +x /bootstrap/initialize.sh

# Start the application
ENTRYPOINT ["/bootstrap/initialize.sh"]

FROM golang:1.4.1

# Grab the source code and add it to the workspace.
ADD . /go/src/hubbub

# Install revel and the revel CLI.
RUN go get github.com/revel/revel
RUN go get github.com/revel/cmd/revel

# Use the revel CLI to start up our application.
ENTRYPOINT revel run hubbub dev 3000

# Open up the port where the app is running.
EXPOSE 3000

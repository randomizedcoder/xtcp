#
# xtcp build/container/Dockerfile
#
# To build the container
# cd to xtcp root directory
# sudo docker build -f ./build/containers/Dockerfile .
#
# See also: https://docs.docker.com/engine/reference/commandline/build/
#
# Build the application
FROM golang:1.20.3-buster AS build

# RUN pwd
# RUN ls -la

# https://github.com/GoogleContainerTools/distroless#examples-with-docker
WORKDIR /go/src/xtcp
COPY . .

#RUN go mod download

#RUN go mod download
# RUN pwd
# RUN ls -la
RUN CGO_ENABLED=0 go build -o ./cmd/xtcp/xtcp ./cmd/xtcp/xtcp.go

# Build the deploy container
# https://github.com/GoogleContainerTools/distroless

# Now copy it into our base image
FROM gcr.io/distroless/static-debian11
COPY --from=build /go/src/xtcp/cmd/xtcp/xtcp /

# promListen default is "0.0.0.0:9000"
EXPOSE 9000

CMD ["/xtcp --promListen 0.0.0.0:9000"]

ENTRYPOINT ["/xtcp"]

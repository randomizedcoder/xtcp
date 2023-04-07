#
# build/container/Dockerfile
#
# Build the application
FROM golang:1.20.2-buster AS build

# https://github.com/GoogleContainerTools/distroless#examples-with-docker
WORKDIR /go/src
COPY . .

#RUN go mod download
RUN ls -la
RUN pwd
RUN CGO_ENABLED=0 go build -o ./xtcp /go/src/xtcp/cmd/xtcp/xtcp.go

# Build the deploy container
# https://github.com/GoogleContainerTools/distroless

# Now copy it into our base image
FROM gcr.io/distroless/static-debian11
COPY --from=build /go/bin/app /
CMD ["/xtcp"]

ENTRYPOINT ["xtcp"]

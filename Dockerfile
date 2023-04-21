FROM golang:1.16 AS build

WORKDIR /Workspace/Kubernetes_Docker_Practice
COPY main main.go
RUN CGO_ENABLED=0 go build -o main main.go

FROM scratch
COPY --from=build /Workspace/Kubernetes_Docker_Practice/main /usr/local/bin/main
CMD ["/usr/local/bin/main"]
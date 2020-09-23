FROM golang:latest as builder

RUN CGO_ENABLED=0 go get -v github.com/osrg/gobgp/cmd/gobgpd
RUN CGO_ENABLED=0 go get -v github.com/osrg/gobgp/cmd/gobgp

FROM alpine:edge

COPY --from=builder /go/bin/gobgp /go/bin/gobgpd /usr/bin/

EXPOSE 179 50051

ENTRYPOINT ["/usr/bin/gobgpd"]
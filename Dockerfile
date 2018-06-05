FROM golang:alpine
RUN apk add --no-cache git make curl && curl https://raw.githubusercontent.com/golang/dep/master/install.sh | ash && apk del curl && rm -rf /var/cache/apk/*
ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
WORKDIR $GOPATH

GO_FILES := $(shell find . -type f -name '*.go' -not -path "./vendor/*")
GO_PACKAGES := $(shell go list ./... | sed "s/github.com\/wish\/docker-registry-client/./" | grep -v "^./vendor/")

build:
	go build -v $(GO_PACKAGES)

test: build
	go fmt $(GO_PACKAGES)

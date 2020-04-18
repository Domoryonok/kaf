build:
	go generate
	GO111MODULE=on go build -ldflags "-w -s" ./cmd/kaf
install: build
	GO111MODULE=on go install -ldflags "-w -s" ./cmd/kaf
release:
	rm -rf dist/ && goreleaser

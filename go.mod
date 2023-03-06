module github.com/Edgio/xtcp

go 1.19

replace github.com/Edgio/xtcp/pkg/misc => ./pkg/misc

replace github.com/Edgio/xtcp/pkg/cliflags => ./pkg/cliflags

replace github.com/Edgio/xtcp/pkg/xtcppb => ./pkg/xtcppb

replace github.com/Edgio/xtcp/pkg/poller => ./pkg/poller

replace github.com/Edgio/xtcp/pkg/netlinker => ./pkg/netlinker

replace github.com/Edgio/xtcp/pkg/inetdiager => ./pkg/inetdiager

replace github.com/Edgio/xtcp/pkg/pollerstater => ./pkg/pollerstater

replace github.com/Edgio/xtcp/pkg/inetdiagerstater => ./pkg/inetdiagerstater

replace github.com/Edgio/xtcp/pkg/netlinkerstater => ./pkg/netlinkerstater

require (
	github.com/go-cmd/cmd v1.4.1
	github.com/nsqio/go-nsq v1.1.0
	github.com/pkg/profile v1.7.0
	github.com/prometheus/client_golang v1.14.0
	golang.org/x/sys v0.6.0
	google.golang.org/protobuf v1.28.1
)

require (
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/cespare/xxhash/v2 v2.1.2 // indirect
	github.com/felixge/fgprof v0.9.3 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/golang/snappy v0.0.1 // indirect
	github.com/google/pprof v0.0.0-20230228050547-1710fef4ab10 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.1 // indirect
	github.com/prometheus/client_model v0.3.0 // indirect
	github.com/prometheus/common v0.37.0 // indirect
	github.com/prometheus/procfs v0.8.0 // indirect
)

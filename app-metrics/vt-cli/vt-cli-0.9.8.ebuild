# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=8
inherit go-module
EGO_SUM=(
	"cloud.google.com/go v0.46.3"
	"cloud.google.com/go/bigquery v1.0.1"
	"cloud.google.com/go/datastore v1.0.0"
	"cloud.google.com/go/firestore v1.1.0"
	"cloud.google.com/go/pubsub v1.0.1"
	"cloud.google.com/go/storage v1.0.0"
	"dmitri.shuralyov.com/gpu/mtl v0.0.0-20190408044501-666a987793e9"
	"github.com/BurntSushi/toml v0.3.1"
	"github.com/BurntSushi/xgb v0.0.0-20160522181843-27f122750802"
	"github.com/OneOfOne/xxhash v1.2.2"
	"github.com/VirusTotal/vt-go v0.0.0-20211116094520-07a92e6467b7"
	"github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc"
	"github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf"
	"github.com/armon/circbuf v0.0.0-20150827004946-bbbad097214e"
	"github.com/armon/go-metrics v0.0.0-20180917152333-f0300d1749da"
	"github.com/armon/go-radix v0.0.0-20180808171621-7fddfc383310"
	"github.com/beorn7/perks v1.0.0"
	"github.com/bgentry/speakeasy v0.1.0"
	"github.com/bketelsen/crypt v0.0.3-0.20200106085610-5cbc8cc4026c"
	"github.com/briandowns/spinner v1.7.0"
	"github.com/cavaliercoder/grab v2.0.0+incompatible"
	"github.com/cespare/xxhash v1.1.0"
	"github.com/client9/misspell v0.3.4"
	"github.com/coreos/bbolt v1.3.2"
	"github.com/coreos/etcd v3.3.13+incompatible"
	"github.com/coreos/go-semver v0.3.0"
	"github.com/coreos/go-systemd v0.0.0-20190321100706-95778dfbb74e"
	"github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/dgrijalva/jwt-go v3.2.0+incompatible"
	"github.com/dgryski/go-sip13 v0.0.0-20181026042036-e10d5fee7954"
	"github.com/dustin/go-humanize v1.0.0"
	"github.com/fatih/color v1.7.0"
	"github.com/fsnotify/fsnotify v1.4.7"
	"github.com/ghodss/yaml v1.0.0"
	"github.com/go-gl/glfw v0.0.0-20190409004039-e6da0acd62b1"
	"github.com/go-kit/kit v0.8.0"
	"github.com/go-logfmt/logfmt v0.4.0"
	"github.com/go-stack/stack v1.8.0"
	"github.com/gobwas/glob v0.2.3"
	"github.com/gogo/protobuf v1.2.1"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b"
	"github.com/golang/groupcache v0.0.0-20190129154638-5b532d6fd5ef"
	"github.com/golang/mock v1.3.1"
	"github.com/golang/protobuf v1.3.2"
	"github.com/google/btree v1.0.0"
	"github.com/google/go-cmp v0.3.0"
	"github.com/google/martian v2.1.0+incompatible"
	"github.com/google/pprof v0.0.0-20190515194954-54271f7e092f"
	"github.com/google/renameio v0.1.0"
	"github.com/googleapis/gax-go/v2 v2.0.5"
	"github.com/gopherjs/gopherjs v0.0.0-20181017120253-0766667cb4d1"
	"github.com/gorilla/websocket v1.4.2"
	"github.com/gosuri/uitable v0.0.3"
	"github.com/grpc-ecosystem/go-grpc-middleware v1.0.0"
	"github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0"
	"github.com/grpc-ecosystem/grpc-gateway v1.9.0"
	"github.com/hashicorp/consul/api v1.1.0"
	"github.com/hashicorp/consul/sdk v0.1.1"
	"github.com/hashicorp/errwrap v1.0.0"
	"github.com/hashicorp/go-cleanhttp v0.5.1"
	"github.com/hashicorp/go-immutable-radix v1.0.0"
	"github.com/hashicorp/go-msgpack v0.5.3"
	"github.com/hashicorp/go-multierror v1.0.0"
	"github.com/hashicorp/go-rootcerts v1.0.0"
	"github.com/hashicorp/go-sockaddr v1.0.0"
	"github.com/hashicorp/go-syslog v1.0.0"
	"github.com/hashicorp/go-uuid v1.0.1"
	"github.com/hashicorp/go.net v0.0.1"
	"github.com/hashicorp/golang-lru v0.5.1"
	"github.com/hashicorp/hcl v1.0.0"
	"github.com/hashicorp/logutils v1.0.0"
	"github.com/hashicorp/mdns v1.0.0"
	"github.com/hashicorp/memberlist v0.1.3"
	"github.com/hashicorp/serf v0.8.2"
	"github.com/inconshreveable/mousetrap v1.0.0"
	"github.com/jonboulle/clockwork v0.1.0"
	"github.com/json-iterator/go v1.1.6"
	"github.com/jstemmer/go-junit-report v0.0.0-20190106144839-af01ea7f8024"
	"github.com/jtolds/gls v4.20.0+incompatible"
	"github.com/julienschmidt/httprouter v1.2.0"
	"github.com/k0kubun/go-ansi v0.0.0-20180517002512-3bf9e2903213"
	"github.com/kisielk/errcheck v1.1.0"
	"github.com/kisielk/gotool v1.0.0"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1"
	"github.com/kr/logfmt v0.0.0-20140226030751-b84e30acd515"
	"github.com/kr/pretty v0.1.0"
	"github.com/kr/pty v1.1.1"
	"github.com/kr/text v0.1.0"
	"github.com/magiconair/properties v1.8.1"
	"github.com/mattn/go-colorable v0.1.2"
	"github.com/mattn/go-isatty v0.0.10"
	"github.com/mattn/go-runewidth v0.0.5"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1"
	"github.com/miekg/dns v1.0.14"
	"github.com/mitchellh/cli v1.0.0"
	"github.com/mitchellh/go-homedir v1.1.0"
	"github.com/mitchellh/go-testing-interface v1.0.0"
	"github.com/mitchellh/gox v0.4.0"
	"github.com/mitchellh/iochan v1.0.0"
	"github.com/mitchellh/mapstructure v1.1.2"
	"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd"
	"github.com/modern-go/reflect2 v1.0.1"
	"github.com/mwitkow/go-conntrack v0.0.0-20161129095857-cc309e4a2223"
	"github.com/oklog/ulid v1.3.1"
	"github.com/pascaldekloe/goe v0.0.0-20180627143212-57f6aae5913c"
	"github.com/pelletier/go-toml v1.6.0"
	"github.com/pkg/errors v0.8.1"
	"github.com/plusvic/go-ansi v0.0.0-20180516115420-9879244c4340"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/posener/complete v1.1.1"
	"github.com/prometheus/client_golang v0.9.3"
	"github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90"
	"github.com/prometheus/common v0.4.0"
	"github.com/prometheus/procfs v0.0.0-20190507164030-5867b95ac084"
	"github.com/prometheus/tsdb v0.7.1"
	"github.com/rogpeppe/fastuuid v0.0.0-20150106093220-6724a57986af"
	"github.com/rogpeppe/go-internal v1.3.0"
	"github.com/russross/blackfriday/v2 v2.0.1"
	"github.com/ryanuber/columnize v0.0.0-20160712163229-9b3edd62028f"
	"github.com/sean-/seed v0.0.0-20170313163322-e2103e2c3529"
	"github.com/shurcooL/sanitized_anchor_name v1.0.0"
	"github.com/sirupsen/logrus v1.2.0"
	"github.com/smartystreets/assertions v0.0.0-20180927180507-b2de0cb4f26d"
	"github.com/smartystreets/goconvey v1.6.4"
	"github.com/soheilhy/cmux v0.1.4"
	"github.com/spaolacci/murmur3 v0.0.0-20180118202830-f09979ecbc72"
	"github.com/spf13/afero v1.2.2"
	"github.com/spf13/cast v1.3.0"
	"github.com/spf13/cobra v1.1.3"
	"github.com/spf13/jwalterweatherman v1.1.0"
	"github.com/spf13/pflag v1.0.5"
	"github.com/spf13/viper v1.7.1"
	"github.com/stretchr/objx v0.1.1"
	"github.com/stretchr/testify v1.7.0"
	"github.com/subosito/gotenv v1.2.0"
	"github.com/thedevsaddam/gojsonq/v2 v2.5.2"
	"github.com/tmc/grpc-websocket-proxy v0.0.0-20190109142713-0ad062ec5ee5"
	"github.com/xiang90/probing v0.0.0-20190116061207-43a291ad63a2"
	"go.etcd.io/bbolt v1.3.2"
	"go.opencensus.io v0.22.0"
	"go.uber.org/atomic v1.4.0"
	"go.uber.org/multierr v1.1.0"
	"go.uber.org/zap v1.10.0"
	"golang.org/x/crypto v0.0.0-20190605123033-f99c8df09eb5"
	"golang.org/x/exp v0.0.0-20191030013958-a1ab85dbe136"
	"golang.org/x/image v0.0.0-20190802002840-cff245a6509b"
	"golang.org/x/lint v0.0.0-20190930215403-16217165b5de"
	"golang.org/x/mobile v0.0.0-20190719004257-d2bd2a29d028"
	"golang.org/x/mod v0.1.0"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859"
	"golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45"
    "golang.org/x/sync v0.0.0-20190423024810-112230192c58"
    "golang.org/x/sys v0.0.0-20191028164358-195ce5e7f934"
    "golang.org/x/text v0.3.2"
    "golang.org/x/time v0.0.0-20190308202827-9d24e82272b4"
    "golang.org/x/tools v0.0.0-20191112195655-aa38f8e97acc"
    "golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7"
    "google.golang.org/api v0.13.0"
    "google.golang.org/appengine v1.6.1"
    "google.golang.org/genproto v0.0.0-20191108220845-16a3f7862a1a"
    "google.golang.org/grpc v1.21.1"
    "gopkg.in/alecthomas/kingpin.v2 v2.2.6"
    "gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127"
    "gopkg.in/errgo.v2 v2.1.0"
    "gopkg.in/ini.v1 v1.51.0"
    "gopkg.in/resty.v1 v1.12.0"
    "gopkg.in/yaml.v2 v2.4.0"
    "gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c"
    "honnef.co/go/tools v0.0.1-2019.2.3"
    "rsc.io/binaryregexp v0.2.0"
)
go-module_set_globals
DESCRIPTION="The command line version of virustotal."
HOMEPAGE="https://virustotal.github.io/vt-cli/"
SRC_URI="https://github.com/VirusTotal/vt-cli/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
            ${EGO_SUM_SRC_URI}"
LICENSE="Apache-2.0 BSD-2-Clause BSD-3-Clause MIT MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RESTRICT="mirror"
RDEPEND=""
DEPEND="${RDEPEND}"
src_install() {
	dobin build/vt
}
S="${WORKDIR}/vt-cli-${PV}"

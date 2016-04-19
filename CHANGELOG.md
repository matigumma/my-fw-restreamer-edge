Changes from v0.1.0-rc.2 to v0.1.0-rc.3

* enabled rtmp-stats (html/xml/json)
  * nice work @ [espizo](https://github.com/espizo)/[simple-nginx-rtmp](https://github.com/espizo/simple-nginx-rtmp)
* removed "--http-01-port 63443" on Let's Encrypt process
* modified (default) env:
  * NEW:
    * RTMP_SRV_APP_HLS_INTERLEAVE "on"
    * RTMP_SRV_APP_HLS_META "copy"
    * RTMP_SRV_APP_HLS_WAIT_KEY "on"
    * RTMP_SRV_APP_HLS_WAIT_VIDEO "on"
    * RTMP_SRV_APP_HLS_DROP_IDLE_PUBLISHER "10s"
    * RTMP_SRV_APP_HLS_SYNC "10ms"
    * RTMP_SRV_APP_HLS_IDLE_STREAMS "off"
    * HTTPS_CERT_CREATE "true"
  * RENAMED:
    * RTMP_SERVER_PORT -> RTMP_SRV_PORT
    * RTMP_SERVER_TIMEOUT -> RTMP_SRV_TIMEOUT
    * RTMP_SERVER_PING -> RTMP_SRV_PING
    * RTMP_SERVER_PING_TIMEOUT -> RTMP_SRV_PING_TIMEOUT
    * RTMP_SERVER_MAX_STREAMS -> RTMP_SRV_MAX_STREAMS
    * RTMP_SERVER_ACK_WINDOW -> RTMP_SRV_ACK_WINDOW
    * RTMP_SERVER_CHUNK_SIZE -> RTMP_SRV_CHUNK_SIZE
    * RTMP_SERVER_MAX_MESSAGE -> RTMP_SRV_MAX_MESSAGE
    * RTMP_SERVER_BUFLEN -> RTMP_SRV_BUFLEN
    * RTMP_SERVER_HLS_FRAGMENT -> RTMP_SRV_APP_HLS_HLS_FRAGMENT
    * RTMP_SERVER_HLS_PLAYLIST_LENGTH -> RTMP_SRV_APP_HLS_HLS_PLAYLIST_LENGTH
    * RTMP_SERVER_HLS_SYNC -> RTMP_SRV_APP_HLS_HLS_SYNC
    * RTMP_SERVER_HLS_CONTINOUS -> RTMP_SRV_APP_HLS_HLS_CONTINOUS
    * RTMP_SERVER_HLS_NESTED -> RTMP_SRV_APP_HLS_HLS_NESTED
    * RTMP_SERVER_HLS_CLEANUP -> RTMP_SRV_APP_HLS_HLS_CLEANUP
    * RTMP_SERVER_HLS_FRAGMENT_NAMING -> RTMP_SRV_APP_HLS_HLS_FRAGMENT_NAMING
    * RTMP_SERVER_HLS_FRAGMENT_NAMING_GRANULARITY -> RTMP_SRV_APP_HLS_HLS_FRAGMENT_NAMING_GRANULARITY
    * RTMP_SERVER_HLS_FRAGMENT_SLICING -> RTMP_SRV_APP_HLS_HLS_FRAGMENT_SLICING
    * RTMP_SERVER_HLS_TYPE -> RTMP_SRV_APP_HLS_HLS_TYPE
    * RTMP_SERVER_HLS_KEY -> RTMP_SRV_APP_HLS_HLS_KEY
    * RTMP_SERVER_HLS_FRAGMENTS_PER_KEY -> RTMP_SRV_APP_HLS_HLS_FRAGMENTS_PER_KEY
    * RTMP_SERVER_HLS_SNAPSHOT_INTERVAL -> RTMP_SRV_APP_HLS_SNAPSHOT_INTERVAL
    * RTMP_SERVER_HLS_TRANSCODING -> RTMP_SRV_APP_HLS_TRANSCODING
    * RTMP_SERVER_HLS_TRANSCODING_PROFILES -> RTMP_SRV_APP_HLS_TRANSCODING_PROFILES
    * RTMP_SERVER_HLS_PUBLISH_TOKEN -> RTMP_PUBLISH_TOKEN
    * HTTP_SERVER_PORT -> HTTP_SRV_PORT
    * HTTP_SERVER_HLS_ACCESS_CONTROL_ALLOW_ORIGIN -> HTTP_SRV_LOC_HLS_ACCESS_CONTROL_ALLOW_ORIGIN
    * HTTP_SERVER_HLS_STATUS_USERNAME -> HTTP_AUTH_USERNAME
    * HTTP_SERVER_HLS_STATUS_PASSWORD -> HTTP_AUTH_PASSWORD
    * HTTPS_SERVER -> HTTPS_SRV
    * HTTPS_SERVER_PORT -> HTTPS_SRV_PORT
  * REMOVED:
    * RTMP_SERVER_HLS_MAX_CONNECTIONS (without function)

Changes from v0.1.0-rc.1 to v0.1.0-rc.2

* removed AIO (was problematic)
* optimized snapshot creation
* added Let's Encrypt
* added "native" trancoding profile
* modified (default) env:
  * MOD: RTMP_SERVER_HLS_TRANSCODING_PROFILE + "native"
  * MOD: HTTP_SENDFILE "on" 
  * NEW: HTTP_TCP_NODELAY "on"
  * NEW: HTTPS_SERVER "off"
  * NEW: HTTPS_SERVER_PORT "443"
  * NEW: HTTPS_CERT_MAIL "admin@example.org"
  * NEW: HTTPS_CERT_DOMAIN "example.org"
  * REMOVED: HTTP_AIO
  * REMOVED: HTTP_DIRECTIO
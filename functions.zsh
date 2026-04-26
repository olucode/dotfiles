# Custom shell functions

# Jellyfin log viewer
# Usage: jlog [lines] [YYYYMMDD]
jlog() {
  local date=${1:-$(date +%Y%m%d)}
  local lines=${2:-1000}
  tail -n "$lines" -f "/Users/olumide/Library/Application Support/jellyfin/log/log_${date}.log"
}

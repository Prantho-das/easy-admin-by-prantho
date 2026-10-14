#!/usr/bin/env bash
# Prantho Admin HTML Page Generator
# Usage: ./scripts/generate.sh [vuexy|materialize|fuse] [output_filename.html]

THEME=${1:-vuexy}
OUTPUT=${2:-"dashboard-${THEME}.html"}

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_DIR="$(dirname "$SCRIPT_DIR")"

case "$THEME" in
  vuexy)
    SOURCE="$SKILL_DIR/references/vuexy-layout.md"
    ;;
  materialize)
    SOURCE="$SKILL_DIR/references/materialize-layout.md"
    ;;
  fuse)
    SOURCE="$SKILL_DIR/references/fuse-layout.md"
    ;;
  *)
    echo "Unknown theme: $THEME. Available: vuexy, materialize, fuse"
    exit 1
    ;;
esac

# Extract the pure HTML block from the markdown blueprint
sed -n '/```html/,/```/p' "$SOURCE" | sed '1d;$d' > "$OUTPUT"

echo "Generated pure HTML page: $OUTPUT (Theme: $THEME)"

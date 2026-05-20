#!/usr/bin/env bash
set -euo pipefail

# Resolve the root directory (where this script lives)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SITES_DIR="$SCRIPT_DIR/sites"
BUILD_DIR="$SCRIPT_DIR/build"

# ── Validation ────────────────────────────────────────────────────────────────
if [[ ! -d "$SITES_DIR" ]]; then
  echo "Error: sites directory not found at '$SITES_DIR'" >&2
  exit 1
fi

if ! command -v uv &>/dev/null; then
  echo "Error: uv is not installed. Run: curl -LsSf https://astral.sh/uv/install.sh | sh" >&2
  exit 1
fi

# ── Helpers ───────────────────────────────────────────────────────────────────
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

pass=0
fail=0
skip=0

# ── Build loop ────────────────────────────────────────────────────────────────
echo -e "\n📦 Starting MkDocs build...\n"

for site_path in "$SITES_DIR"/*/; do
  site_name="$(basename "$site_path")"
  config="$site_path/mkdocs.yml"
  out_dir="$BUILD_DIR/$site_name"

  if [[ ! -f "$config" ]]; then
    echo -e "${YELLOW}⚠  Skipping '$site_name' — no mkdocs.yml found${NC}"
    (( skip++ )) || true
    continue
  fi

  echo -e "🔨 Building '${site_name}'..."
  mkdir -p "$out_dir"

  build_log="$(./.venv/bin/mkdocs build \
      --config-file "$config" \
      --site-dir "$out_dir" 2>&1)" \
    && {
      echo -e "${GREEN}✔  '$site_name' → build/$site_name${NC}"
      (( pass++ )) || true
    } || {
      echo -e "${RED}✖  '$site_name' — build failed${NC}"
      echo -e "${RED}$build_log${NC}" | sed 's/^/   /'
      (( fail++ )) || true
    }
done

# ── Summary ───────────────────────────────────────────────────────────────────
echo -e "\n─────────────────────────────────"
echo -e "  Built:   ${GREEN}$pass${NC}"
[[ $skip -gt 0 ]] && echo -e "  Skipped: ${YELLOW}$skip${NC}"
[[ $fail -gt 0 ]] && echo -e "  Failed:  ${RED}$fail${NC}"
echo -e "─────────────────────────────────\n"

[[ $fail -gt 0 ]] && exit 1
exit 0
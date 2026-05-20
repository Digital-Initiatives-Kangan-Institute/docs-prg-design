#!/bin/bash
set -e

# ── Colours ───────────────────────────────────
RED='\033[0;31m'; GREEN='\033[0;32m'
CYAN='\033[0;36m'; BOLD='\033[1m'; RESET='\033[0m'

print_step()    { echo -e "${BOLD}${CYAN}▸ $1${RESET}"; }
print_success() { echo -e "${GREEN}✔  $1${RESET}"; }
print_error()   { echo -e "${RED}✖  $1${RESET}" >&2; }

# ── Header ────────────────────────────────────
echo -e "\n${BOLD}${CYAN}╔══════════════════════════════════════╗${RESET}"
echo -e "${BOLD}${CYAN}║         MkDocs Environment Setup     ║${RESET}"
echo -e "${BOLD}${CYAN}╚══════════════════════════════════════╝${RESET}\n"

# ── Check for uv ──────────────────────────────
if ! command -v uv &>/dev/null; then
  print_step "Installing uv..."
  curl -LsSf https://astral.sh/uv/install.sh | sh
  source "$HOME/.local/bin/env"
  print_success "uv installed"
fi

# ── Dependencies ──────────────────────────────
print_step "Installing dependencies..."
uv sync

# ── Done ──────────────────────────────────────
echo -e "\n${BOLD}${GREEN}╔══════════════════════════════════════╗${RESET}"
echo -e "${BOLD}${GREEN}║   Setup complete! ✓                  ║${RESET}"
echo -e "${BOLD}${GREEN}╚══════════════════════════════════════╝${RESET}"
echo -e "
  ${CYAN}To create a new site:${RESET}  ./create.sh
  ${CYAN}To serve a site:${RESET}       ./serve.sh
"
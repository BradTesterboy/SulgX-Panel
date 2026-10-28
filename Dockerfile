#!/bin/bash
set -euo pipefail

cd /app

mkdir -p /data 2>/dev/null || true

export SERVER_PORT="${SERVER_PORT:-${PORT:-8000}}"

exec python main.py

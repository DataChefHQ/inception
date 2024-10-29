#!/usr/bin/env bash
set -euo pipefail

python -m mypy .
python -m pytest -vv

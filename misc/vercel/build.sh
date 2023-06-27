#!/bin/bash
set -eu -o pipefail

# .vercel/
#   project.json
#   output/
#     config.json
#     static/      = ./dist

# clean
rm -rf .vercel/output
mkdir -p .vercel/output

# config.json
cp misc/vercel/config.json .vercel/output/config.json

# static
cp -r dist .vercel/output/static

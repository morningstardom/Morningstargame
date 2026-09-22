#!/bin/sh
# Wraps game.html (the claude.ai artifact source) into a standalone index.html
# that any static host (GitHub Pages, Netlify, etc.) can serve.
cd "$(dirname "$0")"
{
  printf '%s\n' '<!doctype html>' '<html lang="en">' '<head>' \
    '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">' \
    '<meta name="apple-mobile-web-app-capable" content="yes">' \
    '<meta name="theme-color" content="#14213D">' \
    '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}[hidden]{display:none!important}</style>' \
    '</head>' '<body>'
  cat game.html
  printf '%s\n' '</body>' '</html>'
} > index.html

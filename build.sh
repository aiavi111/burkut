#!/bin/bash
# Собирает index.html (обычная страница для GitHub Pages / Vercel) из src.html (исходник артефакта Claude).
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="ru">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui,sans-serif}img{max-width:100%%}[hidden]{display:none!important}</style>\n</head>\n<body>\n'
  cat src.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "index.html собран"

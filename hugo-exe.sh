#!/bin/bash
if [ $1 = "dist" ]; then
  echo "
  =====================================
  distをスタートします。
  =====================================
  "
  hugo --theme=theme_robust
else
  echo "
  =====================================
  watchをスタートします。
  =====================================
  "
  hugo server --watch --theme=theme_robust --buildDrafts&
  open http://localhost:1313/
fi


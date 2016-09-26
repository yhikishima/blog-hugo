#!/bin/bash
# タスクをストップした時に実行
end_action () {

  # hugo プロセス確認
  ps aux | grep hugo | grep -v grep

  # hugo プロセスkill
  ps aux | grep hugo | grep -v grep | awk '{ print "kill -9", $2 }' | sh
}

if [ "$1" == "dist" ]; then
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
  trap end_action 2
  open http://localhost:1313/
  hugo server --watch --theme=theme_robust --buildDrafts
fi


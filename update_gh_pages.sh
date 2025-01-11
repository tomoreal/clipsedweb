#!/bin/bash

# 現在のブランチ名を取得
CURRENT_BRANCH=$(git branch --show-current)

# gh-pagesブランチに切り替え
git checkout gh-pages

# masterブランチをgh-pagesブランチにマージ
git merge master

# gh-pagesをリモートにプッシュ
git push origin gh-pages

# 元のブランチに戻る
git checkout "$CURRENT_BRANCH"

echo "完了しました！"

#!/bin/bash
echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
# サイトをビルド
hugo -t slim
# 変更ファイルをgitに追加
git add -A
# コミット（引数があればそれをコミットメッセージにする）
git commit -m "update"
# 親フォルダ（全ファイル）をプッシュ
git push origin master
# 公開用フォルダ（サブモジュール）をプッシュ
git subtree push --prefix=public https://github.com/hiroriin/hiroriin.github.io.git master
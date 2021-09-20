# ディレクトリ構成

## static
    js
        jquery
        bootstrap
    css
        jquery
        bootstrap

    image



## configs

    smarty
        テンプレート設定

    database
        接続情報はconfigに設定してください
        データベースハンドラを取得できます

    app_settings.php
        smartyライブラリのpath

## plugins
    smartyで使用するプラグイン
    ユーザ独自定義のフィルターもこのディレクトリに保存します

    

## その他
    cache：
    template_c： Smartyキャッシュ保存
    doc：バージョン管理から除外しています

## Git

URL
    https://github.com/ZakkInTheZoo/board2019
    git@github.com:ZakkInTheZoo/board2019.git

\.git\infoで指定する。 .gitignoreを除外している

```
.gitignore
HEAD
```

git log (vscode)Git History拡張機能で見やすくなります

## ビルドインサーバー実行

php -S 127.0.0.1:9002

## 履歴

1. 2019-10-08 ログイン・ログアウト
1. 2019-10-08 メッセージ（テーブル設計、ダミーデータ）
1. 2019-10-09 Javascript:一覧からクリック選択によるアイコン表示切替

1. 2019-10-09 サーバーサイドPHP:新規登録
1. 2019-10-09 テンプレートSMARTY関数：ブックマーク有無表示
1. 2019-10-09 テンプレートSMARTYフィルター：Statusハイライト表示

1. 2019-10-10 モデル。クエリビルダ。EagerLoading(with/クロ－ジャ)
1. 2019-10-10 主キー文字列の場合：Has-Many-Thrughがサポートできない＊調査

1. 2019-10-10 JSONレスポンス
1. 2019-10-24 git関連整備





# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## 実行コマンド
* デプロイ
```
git add -A
git commit -m "Update application"
git push
git push heroku master
```
* テーブル追加や内容変更などをした場合
```
heroku run rails db:migrate
```
* seedファイルの反映
```
heroku run rake db:seed
```

* git プッシュ
```
git push
```

* DB作成
```
rake db:create
```

* DBマイグレーションスクリプト
```
rake db:migrate
```

* insert?
```
rake db:seed
```

* DBコンソール
```
rails dbconsole
```

* select
```
select * from tennis;
```

* model削除
```
rails destroy model [モデル名]
```
※マイグレートファイルの削除確認

* model作成
```
rails g model モデル名
```

* マイグレーションファイルステータス確認
```
bundle exec rake db:migrate:status
```

* マイグレーションファイル削除
```
bundle exec rake db:migrate:down VERSION=【ID】
```

* テーブル確認
```
DBコンソールで .tables
```

* マイグレーションファイル作成
```
rails g migration records 【ファイル名】
```

* horoku log
```
heroku logs -t
```

* rail seedファイル反映
```
rake db:seed
```

* rail コンソール
```
rails c
```
テーブル確認 【テーブル名】.column_names
```

test
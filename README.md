== README
# ChatSpace
## 開発環境
- ruby 2.3.1
- Rails 5

## 実装機能
- 新規登録機能
- 1対1のチャット機能
- 複数人によるグループチャット機能
- チャット相手の検索機能
- チャットグループへのユーザー招待機能
- チャットの履歴表示機能
- 画像送信機能
- チャットの自動更新

## Database設計

## users
**association**
- has_many messages
- has_many group_users
- has_many groups through: :group_users

|column               |type   |constraint  |
|:--------------------|:------|:-----------|
|id                   |integer|
|name                 |string |null: false |
|email                |string |unique: true|
|password             |string |
|password_confirmation|string |
|timestamps           |

## messsages
**association**
- belongs_to user
- belongs_to group

|column   |type      |
|:--------|:------   |
|id       |integer   |
|body     |text      |
|image    |string    |
|user_id  |references|
|group_id |references|
|timestamp|          |

## groups
**association**
- has_many messages
- has_many group_users
- belongs_to users through: :group_users

|column    |type      |constraint |
|:---------|:---------|:----------|
|id        |integer   |           |
|group_name|string    |null: false|

## group_users
**association**
belongs_to :user
belongs_to :group

|column  |type      |
|:-------|:---------|
|id      |integer   |
|user_id |references|
|group_id|references|

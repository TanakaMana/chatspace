== README
# ChatSpace
## Database設計

## users
**association**
- has_many messages
- has_many groups

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
- belongs_to message

|column  |type      |
|:-------|:------   |
|id      |integer   |
|body    |text      |
|image   |string    |
|group_id|references|
|user_id |references|

## groups
**association**
- has_many messages
- belongs_to user

|column    |type      |constraint |
|:---------|:---------|:----------|
|id        |integer   |           |
|group_name|string    |null: false|
|member    |string    |null: false|
|user_id   |references|           |
|message_id|references|           |

# README

# アプリケーション名
NOBORU

# NOBORUの概要
NOBORUは全国各地の屋内外のボルダリングができるスポットを投稿できるサイトです。
![](https://i.gyazo.com/9e7288cc9ec598578e1d6e1f178e1449.jpg)

# URL
UserID admin
Password 2222

# テスト用アカウント

# 利用方法
スポット投稿にて施設名や施設のあるスポット名と画像、スポットの住所と屋内外、設置都道府県を洗濯して投稿します。

# 制作した経緯
作成者自身がボルダリングに興味があり、屋内外でボルダリングの体験ができるスポットを
探すことができるアプリケーションがあれば便利なのではないかと考え作成致しました。

# 使用技術一覧
・HTML &CSS
・Ruby
・Ruby on Rails
・MySQL
・AWS
・Heroku

# 実装予定の機能
検索機能

# DB設計

## users テーブル
| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| nickname           | string | null: false              |
| email              | string | null:false, unique: true |
| encrypted_password | string | null: false              |

## items テーブル
| Column                 | Type       | Options           |
| ---------------------- | ---------- | ----------------- |
| item_name              | string     | null: false       |
| item_info              | text       | null: false       |
| item_category          | integer    | null: false       |
| prefecture_id          | integer    | null: false       |

### Association

- has_one :image
- belongs_to :user
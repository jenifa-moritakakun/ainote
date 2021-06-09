# アプリケーション名

ainote（合いの手）

# アプリケーション概要

カレンダーに予定を入力したり、妊婦さん同士での情報のやり取りができます。

# URL



# テスト用アカウント

ログインするにはニックネーム、メールアドレス、パスワードの入力が必要です。

# 利用方法



# 目指した課題解決

初めての妊娠、出産・産後の準備などではわからない事だらけで不安が多くあると思うので、その不安を少しでも取り除けるようにと考えて、作成に取り掛かりました。

# 洗い出した要件

ユーザー管理機能
カレンダー機能

# 実装した機能についての画像やGIF及びその説明



# 実装予定の機能

チャットルーム作成機能
チャット機能
検索機能
選択機能
カウントダウン機能

# データベース設計

ainote.png

# ローカルでの動作方法




# テーブル設計

## calendarsテーブル

| Column             | Type       | Options                    |
| ------------------ | ---------- | -------------------------- |
| start_time         | datetime   | null: false                |
| user               | references | foreign_key: true          |

### アソシエーション

- belongs_to :user
- has_many :plans

## usersテーブル

| Column             | Type    | Options                    |
| ------------------ | ------- | -------------------------- |
| nickname           | string  | null: false                |
| email              | string  | null: false, unique: false |
| encrypted_password | string  | null: false                |
| baby_due           | integer | null: false                |

### Association

- has_one :calendar
- has_many :plans
- has_many :rooms
- has_many :chats

## plansテーブル

| Column             | Type       | Options                 |
| ------------------ | ---------- | ----------------------- |
| title              | text       | null: false             |
| content            | text       | null: false             |
| calendar           | references | null: false             |
| user               | references | null: false             |

### アソシエーション

- belongs_to :calendar
- belongs_to :user

## roomsテーブル

| Column | Type      | Options           |
| ------ | --------- | ----------------- |
| title  | string    | null: false       |
| topic  | string    | null: false       |
| user   | reference | foreign_key: true |

### Association

- belongs_to :user
- has_many   :chats

## chatsテーブル

| Column | Type      | Options           |
| ------ | ----------| ----------------- |
| image  | text      |                   |
| text   | string    |                   |
| user   | reference | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :room
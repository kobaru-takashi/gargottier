# README
# Gargotier
![image](https://user-images.githubusercontent.com/67890575/92997571-3e9e3a80-f54f-11ea-9c05-878b6687ffa3.png)

# 概要
・フレンチレストランのホームページ\
・予約機能\
・予約内容確認メールを自動送信\
・GoogleMapの表示\
・お問い合わせ

# 本番環境
・https://gargotier.herokuapp.com/ \
・https://gargotier.herokuapp.com/users/sign_in/ \
・管理者ログインページ（Basic認証） name = Admin / password = Admin_password_0880 \
・管理者テストアカウント：test@gmail.com / test1234


# 制作背景
・妻の父はフレンチレストランを個人経営しています。ホームページが存在しないため、顧客は地域のかたや知り合いが多く、さまざまな人にお店を知って欲しいという思いからホームページを作成しました。また、電話のみで予約を承っていたため、予約機能を実装する計画を立てました。

# 工夫したポイント
・予約内容を自動送信し、メールで内容確認可能\
・固定ヘッダーのボタンによりページ移動操作が容易\
・GoogleMapを実装した事により場所の把握が容易\
・管理者をログインしている者に定義し、他のユーザーが登録出来ないようにログイン画面にはBasic認証を実装

# 開発環境
・Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code/AWS/Heroku

# 課題や今後実装したい機能
・予約内容の検索機能\
・予約内容の集計\
・残席数の表示\
・新着情報機能の投稿追加、非同期化


# DB設計

## Reservationsテーブル

|Column|Type|Option|
|------|----|------|
|reservation_time|integer|null: false|
|number_of_people|integer|null: false|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|phone_number|string|null: false|
|email|string|null: false|
|request|text|------|
|event_id_integer|foreign_key: true|

### Association
- belongs_to :event


## Eventsテーブル
|Column|Type|Option|
|------|----|------|
|title|string|null: false|
|date|datetime|null: false|
|count|integer|default: 8|

### Association
- has_many :reservations


## Usersテーブル
|Column|Type|Option|
|------|----|------|
|email|string|null: false|
|encrypted_password|string|null: false|

### Association
-

## Messagesテーブル
|Column|Type|Option|
|------|----|------|
|name|string|null: false|
|email|string|null: false|
|content|text|null: false|

### Association
-
# README
# Gargotier

# 概要
・フレンチレストランのホーページ\
・予約機能\
・予約したメールアドレスに予約内容確認メールを自動送信\
・GoogleMapの表示
# 

# 本番環境
#
# 制作背景
・妻の父は個人経営していフレンチレストランがあります。義父が作る料理はとても美味しいので、色んな方に知って貰いたく今回のホームページ制作至りました。また、予約は全て電話だった為、予約機能を実装する計画を立てました。
#
# DEMO
#
# 工夫したポイント
・予約内容を自動送信し、メールで内容確認可能\
・固定ヘッダーのボタンによりページ移動操作が容易\
・GoogleMapを実装した事により場所の把握が容易
#
# 開発環境
・Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code/heroku
#
# 課題や今後実装したい機能
・予約内容の検索機能\
・予約内容の集計\
・残席数の表示
#

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

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


# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| 

### Association

- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :

## lyrics テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| lyric   | string | null: false |

### Association

- has_many :
- has_many :
- has_many :


# Reading action plan
トップページ

<img width="960" alt="スクリーンショット 2020-12-13 16 37 18" src="https://user-images.githubusercontent.com/66189601/102006536-3c719500-3d65-11eb-99ce-4b0eb7b73556.png">




# reading action plan DB設計
# README

## usersテーブル
|Colum|Type|Option|
|-----|----|------|
|email|string|null: false, unique: true|
|password|string|null: false|
|nickname|string|null: false|

### Association
has_many :posts

## postsテーブル
|Colum|Type|Option|
|-----|----|------|
|title|text|null: false|
|keyword|text|null: false|
|plan|text|null: false|
|achivement|text||
|user_id|integer|null:false,foreign_key:true|


### Association
belongs_to :user

<!-- This README would normally document whatever steps are necessary to get the
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

* ... -->

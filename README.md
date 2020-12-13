# Reading action plan
トップページ

<img width="960" alt="スクリーンショット 2020-12-13 16 37 18" src="https://user-images.githubusercontent.com/66189601/102006536-3c719500-3d65-11eb-99ce-4b0eb7b73556.png">

新規投稿
<img width="971" alt="スクリーンショット 2020-12-13 20 35 06" src="https://user-images.githubusercontent.com/66189601/102011376-f62d2d80-3d86-11eb-92ad-076985764ff0.png">


![Gif](https://github.com/kotaro-imao/reading_ap.wiki.git)




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

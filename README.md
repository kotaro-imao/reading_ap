アプリ名 :
# Reading action plan

概要          : 読書した本の管理アプリ

トップページ : 本の一覧を表示、タイトル・投稿日時 を表示

新規投稿     : タイトル・キーワード・アクションプラン を記入

詳細表示     : 投稿内容の表示と、編集・削除のメニューを表示

編集        : 実タイトル・キーワード・アクションプランの編集、アクションプランの実行完了をラジオボタンで決定
削除        : 投稿の内容の削除

本番環境 : AWS(現在設定中) http://52.192.249.70:3000

制作背景 : 読書後に内容を忘れず自分自信に役立てるように、キーワドとアクションプランを決めて、アクションプランの実行完了を管理します

DEMO :
トップページ
      本の一覧を表示、

<img width="500" alt="スクリーンショット 2020-12-13 16 37 18" src="https://user-images.githubusercontent.com/66189601/102006536-3c719500-3d65-11eb-99ce-4b0eb7b73556.png">

新規投稿
      「新規投稿」をクリックし、タイトル・キーワード・アクションプラン を記入し投稿

![f85a0ecd7d510c2f80b36bfcb4757f30](https://user-images.githubusercontent.com/66189601/102232838-f23e0e80-3f32-11eb-99e5-96da70a0e5ed.gif)

<img src="https://user-images.githubusercontent.com/66189601/102232838-f23e0e80-3f32-11eb-99e5-96da70a0e5ed.gif" width="600">

詳細・編集・削除
      本のタイトルをクリックし詳細を表示、編集・削除のメニュー表示

![readingedit](https://user-images.githubusercontent.com/66189601/102098418-8bedb900-3e6a-11eb-86c1-67b93b528a4e.gif)




工夫したポイント : ラジオボタンの選択をデータベースに保存する

使用技術 : Ruby on Rails・html・Ruby・GitHub・AWS

課題や今後実装したい機能 : ログイン機能・画像添付

DB設計 :

# reading action plan DB設計
# README

<!-- ## usersテーブル
|Colum|Type|Option|
|-----|----|------|
|email|string|null: false, unique: true|
|password|string|null: false|
|nickname|string|null: false|

### Association
has_many :posts -->

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

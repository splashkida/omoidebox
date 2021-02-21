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

# 📷MemoryApp
## カメラロールに埋もれてしまった記憶を思い出そう

# 概要
## カメラロールの謎の写真、会話の途中で出てくる「どこだったっけ」・・・

### すんなり思い出せないおもいでを、条件検索によって詳細が分かるアプリケーション

# URL
## ここにURLを貼る

# 利用方法
## トップページ右上より、ログイン／新規登録
## 新規投稿
### ▷左上の”思い出を登録する”をクリック→「登録する」
### ▷投稿が完了するとトップページへ遷移する
[![Image from Gyazo](https://i.gyazo.com/308bfddc9af81e92d2c4acb697ed5d2d.gif)](https://gyazo.com/308bfddc9af81e92d2c4acb697ed5d2d)

## 詳細検索機能
### ▷詳細選択すると条件に合う検索結果が表示される
[![Image from Gyazo](https://i.gyazo.com/1481724fb82968bd19fe3744d5c674da.gif)](https://gyazo.com/1481724fb82968bd19fe3744d5c674da)

## マイページ機能
### ▷トップページ右上の”マイページ”より、自分の投稿を参照できる
[![Image from Gyazo](https://i.gyazo.com/f396f81cfe80393a5827bad211e099a7.gif)](https://gyazo.com/f396f81cfe80393a5827bad211e099a7)


# 目指した課題解決
## 
| ユーザーストーリーから考えた課題           |    課題解決     |
| ------------------------------- | -------- | 
| カメラロールを遡っている時、何の写真かわからないという課題     | 詳細条件・コメントを入力することで思い出すことができる   |
| 行った／行きたい場所について、他の人の感想も参考にしたいという課題              | 検索を通して知ることができる | 
| 予算や天気など条件に合わせた観光スポットを知りたいという課題 | 詳細条件を指定して絞り込み検索ができる  | 


# 機能一覧
##
| 機能             | 概要    | 
| ------------------- | -------- | 
| ユーザー管理機能            | 新規登録・ログイン・ログアウトが可能   | 
| 投稿機能           | 画像付きで記事の投稿ができる   | 
| 記事検索機能  | 投稿された記事を検索することができる   | 
| マイページ機能          | 自分の投稿した記事のみを観覧できる  | 


# 追加予定機能
## -投稿編集・削除機能
## -複数枚の画像のアップロード機能

# データベース設計
## Users

| Column              | Type     | Options                   |
| ------------------- | -------- | ------------------------- |
| nickname            | string   | null: false               |
| email               | string   | null: false, unique: true |
| encrypted_password  | string   | null: false               |

has_many :memories

## Memories

| Column              | Type      | Options                   |
| ------------------- | --------  | ------------------------- |
| year                | integer   | null: false               |
| month               | integer   | null: false               |
| day                 | integer   | null: false               |
| place               | string    | null: false               |
| weather_id          | integer   | null: false               |
| access_id           | integer   | null: false               |
| scene_id            | integer   | null: false               |
| price_id            | integer   | null: false               |
| with_who            | string    | null: false               |
| comment             | string    | null: false               |
| user                | references| null: false               |


belongs_to :user

# ローカルでの動作方法
### $ git clone https://github.com/splashkida/memory-app
### $ cd global-day
### $ bundle install
### $ rails db:create
### $ rails db:migrate
### $ rails s
### ▷ http://localhost:3000

# 開発環境
### -VSCode
### -Ruby2.6.5
### -Rails6.0.3.4
### -MySQL5.6.47
### -gem3.0.3
### -heroku/7.47.12

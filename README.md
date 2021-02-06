# ReadersHub

## アプリケーション概要
読書の内容や書籍の情報を他のユーザーと共有できるアプリケーション

## アプリケーションの機能一覧
・ユーザー管理機能
・新規投稿機能
・タイトル検索機能
・マイページ機能
・投稿詳細表示機能
・投稿編集機能
・投稿削除機能


## 使用言語・技術一覧
・Ruby
・Ruby on Rails
・HTML
・CSS
・画像: Active Storage
・データベース： MySQL
・インフラ: Heroku
・テスト: Pry-rails、FactoryBot、Faker
・自動整形ツール: Rubocop

## URL
https://readershub0.herokuapp.com/


## テスト用アカウント
・ニックネーム： test
・メールアドレス： test@test.com
・パスワード： test123

## 利用方法
1.トップページよりログインまたは、新規登録
2.トップページ右下の投稿するボタンを押下し、新規投稿ページへ遷移
3.新規投稿ページにて書籍画像の選択、必要項目の入力を行い投稿するボタンを押下
4.投稿が完了するとトップページへ遷移

## 目指した課題解決

## 洗い出した要件


## データベース設計

### usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

has_many :books

### booksテーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| title         | string     | null: false                    |
| author        | string     | null: false                    |
| genre_id      | integer    | null: false                    |
| summary       | text       | null: false                    |
| impressions   | text       | null: false                    |
| user          | references | null: false, foreign_key: true |

belongs_to :user
has_one : order
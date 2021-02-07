# ReadersHub

## アプリケーション概要
読書の内容や書籍の情報を他のユーザーと共有できるアプリケーション

## アプリケーションの機能一覧
| 機能       | 概要                        |
| -------- | ------------------------- |
| ユーザー管理機能 | 新規登録・ログイン・ログアウトが可能        |
| 新規投稿機能   | 画像添付、必要項目の入力で新規投稿が可能      |
| タイトル検索機能 | 投稿一覧からタイトルで検索が可能          |
| マイページ機能  | 各ユーザーの投稿一覧が閲覧可能           |
| 投稿詳細機能   | 各投稿の内容が詳細ページにて閲覧可能        |
| 投稿編集機能   | ログイン中の投稿者本人であれば投稿内容の編集が可能 |
| 投稿削除機能   | ログイン中の投稿者本人であれば投稿内容の削除が可能 |

## 使用言語・技術一覧
・Ruby  
・Ruby on Rails  
・HTML  
・CSS  
・画像: AmazonS3、Active Storage  
・データベース： MySQL  
・インフラ: Heroku  
・テスト: Pry-rails、FactoryBot、Faker  
・自動整形ツール: Rubocop  

## URL
(https://readershub0.herokuapp.com/)


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
・読んだ本の内容を保存したい  
・自分以外の人がどんな読書をしているのか知りたい  
・欲しい本に関しての情報収集をしたい  
・自分の読書の参考になる人を見つけたい


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
has_one_attached :image

## 今後実装予定の機能
・コメント投稿機能  
・ページネーション機能  
・お気に入り機能
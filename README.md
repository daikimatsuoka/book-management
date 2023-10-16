# アプリケーション名
Book Management

# アプリケーション概要
自分がおすすめの書籍を投稿でき、投稿された書籍にいいねができる

# URL
https://book-management-w6js.onrender.com

# テスト用アカウント
Basic認証のID admin<br>
Basec認証のパスワード 2222

# 利用方法
## 投稿機能
1.ヘッダーの新規登録ボタンよりユーザーの新規登録を行う<br>
2.一覧表示ページ(トップページ)下部の投稿するボタンより投稿ページに遷移する<br>
3.投稿フォームの各情報を入力し、ページ下部の投稿ボタンを押す<br>
## いいね機能
ログインしている状態で、一覧表示ページにある投稿の♥ボタンを押すといいねができる

# アプリケーションを作成した背景
目的の商品を決めずに書店に行くと、1つのカテゴリーでも様々な本があり,どの本を購入するか選ぶことに時間がかかってしまう。この課題を解決するために、おすすめの本や漫画を共有して保存することで書籍の管理を行い、書店でどの本を購入するか迷う手間を減らすことと、書籍の購買意欲の促進を目的とした。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/10zGk7QVz21FFjy_psz1qF_lnEFtHTG1k9V3poTiLLU4/edit?usp=drive_link

# 実装予定の機能
カテゴリー検索機能

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/d992b05c4582300a2c6fbba6de2fe4cf.png)](https://gyazo.com/d992b05c4582300a2c6fbba6de2fe4cf)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/11500edb3b542f46cfd1ed8733923b79.png)](https://gyazo.com/11500edb3b542f46cfd1ed8733923b79)

# 開発環境
・Ruby<br>
・HTML/CSS<br>
・Javascript<br>
・GitHub<br>
・GitHub Desktop<br>
・Visual Studio Code<br>

# ローカルでの動作方法
git clone https://github.com/daikimatsuoka/book-management.git<br>
cd book-management/<br>
bundle install <br>
yarn install<br>
# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false | 
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :books
- has_many :comments
- has_many :likes

## books テーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| title                | string     | null: false                    | 
| author               | string     | null: false                    |
| publisher            | string     | null: false                    |
| category_id          | integer    | null: false                    |
| synopsis_explanation | text       | null: false                    |
| user                 | references | null: false, foreign_key: true |

### Association
- has_many :comments
- has_many :likes
- belongs_to :user

## comments テーブル

| Column  | Type       | Options                         |
| ------- | ---------- | ------------------------------- |
| comment | text       | null: false                     | 
| user    | references | null: false , foreign_ker: true |
| book    | references | null: false , foreign_ker: true |

### Association
- belongs_to :user
- belongs_to :book

## likes テーブル

| Column                | Type       | Options           |
| --------------------- | ---------- | ----------------- |
| user                  | references | foreign_key: true |
| item                  | references | foreign_key: true |

- belongs_to: user
- belongs_to: item


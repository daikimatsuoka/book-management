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

# 実装した機能についての画像やGIFおよびその説明
[![Image from Gyazo](https://i.gyazo.com/5332695c2b5c2b61ace05deb65758be5.gif)](https://gyazo.com/5332695c2b5c2b61ace05deb65758be5)
ジャンルは選択可能

[![Image from Gyazo](https://i.gyazo.com/21327c2c980fa38431360bc0f0abaebd.gif)](https://gyazo.com/21327c2c980fa38431360bc0f0abaebd)
すべての情報を入力すれば投稿できる

[![Image from Gyazo](https://i.gyazo.com/e2bfadf50de9af390a6cac13428b04bc.gif)](https://gyazo.com/e2bfadf50de9af390a6cac13428b04bc)
詳細表示ベージのビュー

[![Image from Gyazo](https://i.gyazo.com/ffdc6ce95a221edb04a6a1d95e009306.gif)](https://gyazo.com/ffdc6ce95a221edb04a6a1d95e009306)
コメントが可能

[![Image from Gyazo](https://i.gyazo.com/2af9bb78508b4c96383c4f70928b153c.gif)](https://gyazo.com/2af9bb78508b4c96383c4f70928b153c)
いいねが可能

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

# 工夫したポイント
人の目に触れられるようなビューを意識してレイアウトの作成に取り組みました。<br>これまで、デザインについてはあまり詳しく学んでおらず、どこまでこだわれば良いのか、時間をかければ良いのか非常に悩みました。<br>そこで使う期日を最大2週間と決め、その中で派手ではないが誰が見ても違和感がないデザインを目指そうと決めました。<br>例えば本の画像サイズの調整、一覧表示、詳細表示画面の表示の調整は特に人の目に入りやすいため、高さ、幅、余白等を複数回調整して違和感のないページに仕上げました。

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


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
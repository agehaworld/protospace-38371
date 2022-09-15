# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |
| name               | string | null: false |
| profile            | text   | null: false |
| occupation         | text   | null: false |
| name               | text   | null: false |

### Association

- has_many :prototype_users
- has_many :comments



## prototypes テーブル

| Column       | Type         | Options                        |
| ------------ | ------------ | ------------------------------ |
| title        | string       | null: false                    |
| catch_copy   | text         | null: false                    |
| concept      | text         | null: false                    |
| image        | ActiveStorage| null: false, foreign_key: true |
| user         | references   | null: false, foreign_key: true |

### Association

- has_many :comments
- belongs_to :user




## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :prototype
- belongs_to :user




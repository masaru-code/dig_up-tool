class Task < ApplicationRecord
  belongs_to :user　　　　　　　　　#親userのモデル情報を子がとってくる
  has_many :work_schedules　　　　　#やりたい事と工程モデルをつなぐ

  enum status: { todo: 0, doing: 1, done: 2 }   #enumは整数順に意味のある文字と結ぶ　例todo = 工程 doing = 
                                                #1:北海道（数字）より　意味のある文字hokaidou:北海道の方がわかりやすい
                                                #gem 'enum_help'　を使うと日本語使用可能　https://www.sejuku.net/blog/26369
  validates :name, presence: true  #検索のユーザーネームが空ならエラーのストリング
  
end

class WorkSchedule < ApplicationRecord
  belongs_to :task　　#工程（WorkScheule)の中にやりたい事(task)があるので 　belongs_toもモデル間の関連付け
　　　　　　　　　　　　
  validates :name, presence: true
end

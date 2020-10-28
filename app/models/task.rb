class Task < ApplicationRecord
  belongs_to :user
  has_many :work_schedules

  enum status: { todo: 0, doing: 1, done: 2 }
  validates :name, presence: true
  
end

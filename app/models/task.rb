class Task < ApplicationRecord
  belongs_to :user
  has_many :work_schedules
  has_many :comment
  has_one_attached :images

  enum status: { todo: 0, doing: 1, done: 2 }
  validates :name, presence: true
  
end

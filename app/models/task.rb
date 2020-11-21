class Task < ApplicationRecord
  belongs_to :user
  has_many :work_schedules
  has_many :comments
  has_many :todos, -> { order("done ASC, position ASC").includes(:task) }, dependent: :destroy
  has_one_attached :image
  
  enum status: { todo: 0, doing: 1, done: 2 }
  validates :name, presence: true
  
end
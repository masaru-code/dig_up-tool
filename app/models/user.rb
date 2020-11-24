class User < ApplicationRecord
  has_many :tasks
  has_many :comments
  has_many :goals
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:trackable,
         :lockable, :timeoutable
end

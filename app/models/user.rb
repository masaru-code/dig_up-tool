class User < ApplicationRecord
  has_many :tasks
  has_many :comments
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:trackable,
         :confirmable, :lockable, :timeoutable
end

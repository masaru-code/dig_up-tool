class User < ApplicationRecord
  has_many :tasks　#userモデルとtasksモデルをつなぐ　userが親(1つ)なのでhas_many  useridが１に対してやりたい事は複数
  
  #include Gravtastic
  #gravtastic
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:trackable,
         :confirmable, :lockable, :timeoutable
end

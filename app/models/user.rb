class User < ApplicationRecord
  has_many :tasks
  has_many :comments
  has_many :work_schedules
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:trackable,
         :lockable, :timeoutable
  
  validates :name, uniqueness: true

  mount_uploader :avatar, AvatarUploader

  def email_required?
    false
  end
          
  def email_changed?
    false
  end      
end

class User < ActiveRecord::Base
  has_many :blogs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
end

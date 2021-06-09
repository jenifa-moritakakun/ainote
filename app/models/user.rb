class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :calendar
  has_many :plans
  has_many :rooms
  has_many :chats
end

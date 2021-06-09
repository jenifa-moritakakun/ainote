class Calendar < ApplicationRecord
  validates :title, presence: true
  validates :start_time, presence: true
  belongs_to :user
  has_many :plans
end

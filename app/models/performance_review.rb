class PerformanceReview < ActiveRecord::Base
  belongs_to :user
  has_many :topics
  validates :date, presence: :true
end

class PerformanceReview < ActiveRecord::Base
  belongs_to :user
  has_many :topics, dependent: :destroy
  validates :date, presence: :true
end

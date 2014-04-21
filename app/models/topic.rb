class Topic < ActiveRecord::Base
  belongs_to :performance_review
  validates :category, presence: :true
end

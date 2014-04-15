class OfficeBranch < ActiveRecord::Base
  validates :location, presence: true
end

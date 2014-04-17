class OfficeBranch < ActiveRecord::Base
  validates :location, presence: true
  has_many :users

  def profiles
    users.map(&:profile)
  end
end

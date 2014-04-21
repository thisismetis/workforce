class OfficeBranch < ActiveRecord::Base
  validates :city, presence: true
  validates :country, presence: true

  has_many :users

  def profiles
    users.map(&:profile)
  end

  
end

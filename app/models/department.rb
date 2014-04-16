class Department < ActiveRecord::Base
  validates :name, presence: true
  has_many :users

  def profiles
    users.map(&:profile)
  end
end

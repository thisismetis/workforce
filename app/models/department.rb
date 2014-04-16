class Department < ActiveRecord::Base
  validates :name, presence: true
  has_many :users

  def profiles
    self.users.map { |user| user.profile || NullProfile.new }
  end
end

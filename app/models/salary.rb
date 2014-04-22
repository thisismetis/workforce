class Salary < ActiveRecord::Base
  belongs_to :user
  validates :salary, presence: :true
  validates :date, presence: :true
end

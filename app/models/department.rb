class Department < ActiveRecord::Base
  validates :name, presence: true
end

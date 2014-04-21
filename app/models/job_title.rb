class JobTitle < ActiveRecord::Base
  has_many :job_title_users
  has_many :users, through: :job_title_users

  def name
    super || NullJobTitle.new
  end
end

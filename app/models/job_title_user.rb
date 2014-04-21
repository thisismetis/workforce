class JobTitleUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :job_title
end

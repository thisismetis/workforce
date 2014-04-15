class Profile < ActiveRecord::Base
  belongs_to :user

  def name
    user.name
  end
end

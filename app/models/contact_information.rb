class ContactInformation < ActiveRecord::Base
  belongs_to :user

  def name
    user.name
  end

  def profile
    user.profile
  end
end

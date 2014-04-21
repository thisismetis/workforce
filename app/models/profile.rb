class Profile < ActiveRecord::Base
  belongs_to :user
  has_attached_file :avatar, default_url: :default_avatar

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def name
    user.name
  end

  def present?
    true
  end

  private

  def default_avatar
    "/employee-avatar.png"
  end
end

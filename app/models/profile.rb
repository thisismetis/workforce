class Profile < ActiveRecord::Base
  belongs_to :user
  validate :avatar, presence: :true
  has_attached_file :avatar

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def name
    user.name
  end

  def present?
    true
  end
end

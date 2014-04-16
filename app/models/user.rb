class User < ActiveRecord::Base
  include Clearance::User
  has_one :profile, dependent: :destroy
  belongs_to :department

  def profile
    super || NullProfile.new
  end

  def department
    super || NullDepartment.new
  end
end

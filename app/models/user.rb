class User < ActiveRecord::Base
  include Clearance::User
  has_one :profile, dependent: :destroy
  belongs_to :department

  def has_any_contact_information?
    address ||
      phone_number ||
      emergency_name ||
      emergency_number ||
      emergency_relation
  end

  def profile
    super || NullProfile.new
  end

  def department
    super || NullDepartment.new
  end
end

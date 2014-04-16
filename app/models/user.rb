class User < ActiveRecord::Base
  include Clearance::User
  has_one :profile, dependent: :destroy

  def has_any_contact_information?
    address ||
      phone_number ||
      emergency_name ||
      emergency_number ||
      emergency_relation
  end
end

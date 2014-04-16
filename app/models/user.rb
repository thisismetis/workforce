class User < ActiveRecord::Base
  include Clearance::User
  has_one :profile, dependent: :destroy
  has_one :contact_information, dependent: :destroy
end

class User < ActiveRecord::Base
  include Clearance::User
  has_one :profile, dependent: :destroy
  belongs_to :department
  
  def department_or_unassigned
    department || NullDepartment.new
  end
end

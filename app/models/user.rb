class User < ActiveRecord::Base
  include Clearance::User
  has_one :profile, dependent: :destroy
  has_many :salaries, dependent: :destroy
  belongs_to :department
  belongs_to :office_branch
  has_many :behavior_reports, dependent: :destroy

  def self.search(search_params)
    query = search_params[:query]
    where("name ILIKE :query OR email ILIKE :query", query: "%#{query}%")
  end

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

  def office_branch
    super || NullOfficeBranch.new
  end

  def ordered_salaries
    salaries.order("date DESC")
  end

  def current_salary
    salaries.order("date DESC").first.salary
  end
end

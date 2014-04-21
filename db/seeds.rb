# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
job_list = [
  ["Paper Sales"],
  ["Branch Manager"],
  ["Warehouse"],
  ["Secretary"]
]

job_list.each do |job|
  JobTitle.create( :job_title => job[0])
end

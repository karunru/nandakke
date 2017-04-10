# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv"

user = User.new(:id => 1, :password => 'admin', :username => 'admin', :role => 'admin', :classroom => '*')
user.save!

CSV.foreach('db/data.csv') do |row|
  user = User.new(:password => row[0], :username => row[0], :role => row[1], :classroom => row[2])
  user.save!
end

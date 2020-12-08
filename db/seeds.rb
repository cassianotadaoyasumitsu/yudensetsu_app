# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Company.destroy_all


puts 'Creating Admin Master'

params = {}
params[:name] = 'Cassiano Tadao Yasumitsu'
params[:furigana] = 'ヤスミツ　カシアノ　タダオ'
params[:address] = 'Tsurumi'
params[:pay_number] = '001'
params[:phone] = '07040670084'
params[:email] = 'admin@yasumitsu.io'
params[:role] = 'Denkiya'
params[:level_employee] = rand(1..5)
params[:started_date] = '1979/12/01'
params[:password] = 'Cassian0'
params[:admin] = 'true'
admin = User.new(params)
admin.save

puts 'Admin Created'

puts 'Creating Users'
10.times do
  params = {}
  params[:name] = Faker::Name.name
  params[:furigana] = 'フリガナ'
  params[:address] = Faker::Address.full_address
  params[:pay_number] = '001'
  params[:phone] = '07040670084'
  params[:email] = Faker::Internet.email
  params[:role] = 'Denkiya'
  params[:level_employee] = rand(1..5)
  params[:started_date] = Faker::Date.in_date_period
  params[:password] = '123456'
  params[:admin] = 'false'
  user = User.new(params)
  user.save
end
puts 'Users Created'
puts 'Creating Companies'
10.times do
  params = {}
  params[:name] = Faker::Company.name
  params[:furigana] = 'フリガナ'
  params[:ceo] = Faker::Name.name
  params[:address] = Faker::Address.full_address
  params[:phone] = '00000000000'
  params[:fax] = '0000000000'
  params[:contact] = Faker::Name.name
  params[:email] = Faker::Internet.email
  params[:closure] = rand(1..31)
  company = Company.new(params)
  company.save

end
puts 'Companies Created'

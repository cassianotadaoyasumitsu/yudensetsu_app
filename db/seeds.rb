# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

puts 'Creating Admin Master'

params = {}
params[:name] = 'Cassiano Tadao Yasumitsu'
params[:furigana] = 'ヤスミツ　カシアノ　タダオ'
params[:address] = 'Tsurumi'
params[:pay_number] = '001'
params[:phone] = '07040670084'
params[:email] = 'admin@yasumitsu.io'
params[:role] = 'Denkiya'
params[:level_employee] = '1'
params[:started_date] = '1979/12/01'
params[:password] = 'Cassian0'
params[:admin] = 'true'
admin = User.new(params)
admin.save

puts 'Admin Created'

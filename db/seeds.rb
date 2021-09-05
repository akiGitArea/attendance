# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  name: 'aaa',
  email: 'aaa@aaa.com',
  password: 'aaa',
  password_confirmation: 'aaa',
  del_flg: 'false',
admin_flg: 'true'
  )

User.create!(
  name: 'bbb',
  email: 'bbb@bbb.com',
  password: 'bbb',
  password_confirmation: 'bbb',
  del_flg: 'false',
  admin_flg: 'false'
  )

User.create!(
  name: 'ccc',
  email: 'ccc@ccc.com',
  password: 'ccc',
  password_confirmation: 'ccc',
  del_flg: 'false',
  admin_flg: 'true'
  )

Schedule.create!(
  place: '多摩スポーツセンター',
  start_at: '2021-09-18 18:30:00',
  end_at: '2021-09-18 20:30:00',
  price_all: '3400',
  price_per: '500',
  court_num: 'aコート',
  explanation: 'なんもない',
  del_flg: 'false'
  )
  
UserSchedule.create!(
  user_id: '1',
  schedule_id: '2',
  join_flg: 'true'
  )

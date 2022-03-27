# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Faker::Config.locale = 'en-CA'

20.times do 
Student.create(
    last_name: Faker::Name.last_name, first_name: Faker::Name.first_name, phone: Faker::PhoneNumber.unique.cell_phone, email: Faker::Internet.unique.email)

end
4.times do 
Teacher.create(    
    last_name: Faker::Name.last_name, first_name: Faker::Name.first_name, phone: Faker::PhoneNumber.unique.cell_phone, email: Faker::Internet.unique.email
)
end

30.times do 
@start = Faker::Time.between_dates(from: 2.months.ago, to: 2.weeks.from_now, period: :afternoon)
Lesson.create(
        start_time: @start, 
        end_time: @start + rand(0.5..3.5).hour, 
        student: Student.find(rand(1..20)), teacher: Teacher.find(rand(1..4)),
        plan: Faker::TvShows::BrooklynNineNine.quote
) 
end

User.create! :email => 'adamhannadev@gmail.com', :password => 'password', :password_confirmation => 'password', :role => "Admin"
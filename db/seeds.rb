# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Student.create([
    {last_name: "Norman", first_name: "Kami", phone: "250-846-6659", email: "askljcalb@sclasc.com"},
    {last_name: "Gould", first_name: "Linda", phone: "778-542-5129", email: "asclksn@acklnsa.com"}
])
Teacher.create([
    {last_name: "Hanna", first_name: "Adam", phone: "250-480-9246", email: "info@adamhannaballroom.com"},
    {last_name: "Kottova", first_name: "Tyna", phone: "778-542-5129", email: "tyna@adamhannaballroom.com"}
])
Lesson.create([
    {
        start_time: Time.zone.now, end_time: Time.zone.now + 1.hour, student: Student.first, teacher: Teacher.first
    }
])
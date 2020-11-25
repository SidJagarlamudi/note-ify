# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    User.destroy_all
    Note.destroy_all

    sid = User.create(name: "Sid", username: "sid123", password: "123")
    mj = User.create(name: "Michael", username: "mj123", password: "www")
    hi = User.create(name: "hi", username: "hi", password: "hi")


    50.times do
                 Note.create(
                        title: Faker::GreekPhilosophers.name, 
                        content: Faker::GreekPhilosophers.quote, 
                         user_id: sid.id
                         )
                 end

     10.times do
                Note.create(
                        title: Faker::GreekPhilosophers.name, 
                        content: Faker::GreekPhilosophers.quote, 
                        user_id: mj.id
                        )
                 end
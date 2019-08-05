# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = {
    :roles_mask => 4,
    :email => "admin@admin",
    :password => "adminadmin",
    :username => "admin",
    :created_at => "2019-08-05 10:19:18",
    :updated_at => "2019-08-05 10:19:18"
}


User.create!(admin)

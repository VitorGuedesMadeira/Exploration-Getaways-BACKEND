# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@user1 = User.create(name: 'Vitor', email: 'a@a.com', password: 'password')
@user2 = User.create(name: 'Mumenya', email: 'a@b.com', password: 'password1')
@user3 = User.create(name: 'Fernando', email: 'a@c.com', password: 'password') 
@user4 = User.create(name: 'Karla', email: 'a@d.com', password: 'password') 
@user5 = User.create(name: 'Diego', email: 'a@e.com', password: 'password') 

@package1 = Package.create(title: "Title Example 1!", description: "Description Example 1.", destination: "Destination Example 1", price: 1000, flight: true, hotel: "Hotel Example 1") 
@package2 = Package.create(title: "Title Example 2!", description: "Description Example 2.", destination: "Destination Example 2", price: 1000, flight: true, hotel: "Hotel Example 2") 
@package3 = Package.create(title: "Title Example 3!", description: "Description Example 3.", destination: "Destination Example 3", price: 1000, flight: true, hotel: "Hotel Example 3") 
@package4 = Package.create(title: "Title Example 4!", description: "Description Example 4.", destination: "Destination Example 4", price: 1000, flight: true, hotel: "Hotel Example 4") 
@package5 = Package.create(title: "Title Example 5!", description: "Description Example 5.", destination: "Destination Example 5", price: 1000, flight: true, hotel: "Hotel Example 5") 

Booking.create(user: @user1, package: @package1, start_date: '01/01/2023', end_date: '02/02/2023') 
Booking.create(user: @user2, package: @package2, start_date: '01/01/2023', end_date: '02/02/2023') 
Booking.create(user: @user3, package: @package3, start_date: '01/01/2023', end_date: '02/02/2023') 
Booking.create(user: @user4, package: @package4, start_date: '01/01/2023', end_date: '02/02/2023') 
Booking.create(user: @user5, package: @package5, start_date: '01/01/2023', end_date: '02/02/2023')
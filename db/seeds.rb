# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
@user1 = User.create(name: 'Vitor', email: 'example@a.com', password: 'password')
@user2 = User.create(name: 'Mumenya', email: 'example@b.com', password: 'password')
@user3 = User.create(name: 'Fernando', email: 'example@c.com', password: 'password') 
@user4 = User.create(name: 'Karla', email: 'example@d.com', password: 'password') 
@user5 = User.create(name: 'Diego', email: 'example@e.com', password: 'password') 

@package1 = Package.create(title: "Rainbow Resort - Qatar 2022", description: "Description Example 1.", destination: "Doha City", price: 3500, flight: true, hotel: "10 days", promotion: 15, photo: "https://images.pexels.com/photos/9400974/pexels-photo-9400974.jpeg?auto=compress&cs=tinysrgb&w=600") 
@package2 = Package.create!(title: "Copacabana Palace - Brazil 2023", description: "Description Example 2.", destination: "Rio de Janeiro", price: 2750, flight: false, hotel: "5 days", promotion: 25, photo: "https://images.pexels.com/photos/2876407/pexels-photo-2876407.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1") 
@package3 = Package.create(title: "Safari Tour - Kenya 2022", description: "Description Example 3.", destination: "Nairobi", price: 3000, flight: true, hotel: "7 days", promotion: 35, photo: "https://images.pexels.com/photos/10740862/pexels-photo-10740862.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1") 
@package4 = Package.create(title: "Toronto - Canada 2023", description: "Description Example 4.", destination: "Toronto", price: 4250, flight: true, hotel: "14 days", promotion: 20, photo: "https://images.pexels.com/photos/1868676/pexels-photo-1868676.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1") 
@package5 = Package.create(title: "Chinese Tour - 2023", description: "Description Example 5.", destination: "Pequim", price: 5500, flight: true, hotel: "8 days", promotion: 10, photo: "https://images.pexels.com/photos/2915957/pexels-photo-2915957.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1") 

Booking.create(user: @user1, package: @package1, start_date: '01/01/2023', end_date: '02/02/2023') 
Booking.create(user: @user2, package: @package2, start_date: '01/01/2023', end_date: '02/02/2023') 
Booking.create(user: @user3, package: @package3, start_date: '01/01/2023', end_date: '02/02/2023') 
Booking.create(user: @user4, package: @package4, start_date: '01/01/2023', end_date: '02/02/2023') 
Booking.create(user: @user5, package: @package5, start_date: '01/01/2023', end_date: '02/02/2023')
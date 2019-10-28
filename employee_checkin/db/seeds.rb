# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

employess = Employee.create([{names:'Jorge', last_name:'Cabrera', email:'correo1@email.com' ,gender:1}, 
    {names:'Lina', last_name:'Tassara', email:'lina@email.com' ,gender:0},
    {names:'Eli',last_name:'Campos' ,email:'eli@email.com', gender:0},
    {names:'Laura', last_name:'Bosso' ,email:'lbosso@email.com', gender:0}])


 employee = Employee.find(1)
 
 time = Time.parse("Sep 23 2019 9:11")
 assistance = Assistance.new :checkin => time, :checkout => time + 9*3600
 employee.assistances << assistance

 time = Time.parse("Oct 23 2019 9:11")
 assistance = Assistance.new :checkin => time, :checkout => time + 9*3600
 employee.assistances << assistance

 time = Time.parse("Oct 24 2019 8:19")
 assistance = Assistance.new :checkin => time, :checkout => time + 10*3600
  employee.assistances << assistance

 time = Time.parse("Oct 25 2019 10:19")
 assistance = Assistance.new :checkin => time, :checkout => time + 8*3600
 employee.assistances << assistance

 time = Time.now
 assistance = Assistance.new :checkin => time
 employee.assistances << assistance

 employee.save
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.first.gardens.create(name: "Test 1", start_date: "2019-07-21 00:00:00", end_date: "2019-07-31 00:00:00")
User.first.gardens.create(name: "Test 2", start_date: "2019-07-21 00:00:00", end_date: "2019-07-31 00:00:00")
User.first.gardens.create(name: "Test 3", start_date: "2019-07-21 00:00:00", end_date: "2019-07-31 00:00:00")
User.first.gardens.create(name: "Test 4", start_date: "2019-07-21 00:00:00", end_date: "2019-07-31 00:00:00")
User.first.gardens.create(name: "Test 5", start_date: "2019-07-21 00:00:00", end_date: "2019-07-31 00:00:00")
Plant.create(garden_id: 1, name:"Plant 1", species:"cannabis", strain:"sativa", type:"", sex:"", time_until_harvest:"")
Plant.create(garden_id: 1, name:"Plant 2", species:"cannabis", strain:"indica", type:"", sex:"", time_until_harvest:"")
Plant.create(garden_id: 1, name:"Plant 3", species:"cannabis", strain:"indica", type:"", sex:"", time_until_harvest:"")
Plant.create(garden_id: 1, name:"Plant 4", species:"cannabis", strain:"ruderalis", type:"", sex:"", time_until_harvest:"")
Plant.create(garden_id: 1, name:"Plant 5", species:"cannabis", strain:"sativa", type:"", sex:"", time_until_harvest:"")
Plant.create(garden_id: 1, name:"Plant 6", species:"solanum lycopersicum", strain:"heirloom", type:"", sex:"", time_until_harvest:"")
Plant.create(garden_id: 1, name:"Plant 7", species:"solanum lycopersicum", strain:"heirloom", type:"", sex:"", time_until_harvest:"")
Comment.create(plant_id: 1, user_id: 1, contents: "This is a comment")
Comment.create(plant_id: 1, user_id: 1, contents: "Germination successful")
Comment.create(plant_id: 1, user_id: 1, contents: "Need to increase nutrients next feeding")
Comment.create(plant_id: 1, user_id: 1, contents: "Flushed water tank")
Comment.create(plant_id: 1, user_id: 1, contents: "Switched to flowering light schedule")
Comment.create(plant_id: 2, user_id: 1, contents: "It's working!")
Comment.create(plant_id: 2, user_id: 1, contents: "There can only be one")
Comment.create(plant_id: 2, user_id: 1, contents: "Believe in the force, you must")
Comment.create(plant_id: 2, user_id: 1, contents: "You forget 100% of the code you don't write")
Comment.create(plant_id: 2, user_id: 1, contents: "I'm a little tea pot...")
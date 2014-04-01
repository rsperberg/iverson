# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  Game.delete_all
  Team.delete_all
  School.delete_all

  Game.create(ko_game_id: 01, score: 235, is_home: false,
                      summary: "The bookies got killed on the biggest blow out since the Super Colon Blow of 1976",
                     video_url: "http://prod-m100.cdn.krossover.com/prod-basketball2-2014-1ef799b224cffc8d2337-1600.mp4",
                     date: "10/03/2013", team_id: 5, opponent_score: 0, opponent_id: 8 )

  Game.create(ko_game_id: 021, score: 5, is_home: true,
                      summary: "A real boring sandwhich with cheese",
                     video_url: "http://prod-m100.cdn.krossover.com/prod-basketball2-2014-1ef799b224cffc8d2337-1600.mp4",
                     date: "01/03/2014", team_id: 6, opponent_score: 5, opponent_id: 9 )

  Game.create(ko_game_id: 02, score: 2350, is_home: false,
                      summary: "A Classic Marve Albert back biter",
                     video_url: "http://prod-m100.cdn.krossover.com/prod-basketball2-2014-1ef799b224cffc8d2337-1600.mp4",
                     date: "03/03/2014", team_id: 7, opponent_score: 0, opponent_id: 10 )

  Team.create(id: 5, school_id: 10, ko_team_id: 123, name: "Pukesville Vomits")
  Team.create(id: 6, school_id: 20, ko_team_id: 234, name: "Dorktown Remedials")
  Team.create(id: 7, school_id: 30, ko_team_id: 345, name: "Bland City Excitements")
  Team.create(id: 8, school_id: 40, ko_team_id: 456, name: "The Americans")
  Team.create(id: 9, school_id: 50, ko_team_id: 567, name: "The ROFLcopters")
  Team.create(id: 10, school_id: 60, ko_team_id: 678, name: "WeWork")

  School.create(id: 10, name:"Pukesville Reformatorium Prep Charter Skool", ko_school_id: 111, logo_url: "http://s3.amazonaws.com/krossover-com-prod-teamimages/user_data/basketball2/teamlogo/11814.jpg",
                        city: "Pukesvilee Township", state: "Indiana", country: "Switzerland")

  School.create(id: 20, name:"Master Huberts School for Morons", ko_school_id: 222, logo_url: "http://s3.amazonaws.com/krossover-com-prod-teamimages/user_data/basketball2/teamlogo/11814.jpg",
                        city: "Dorktown Town", state: "Ohio", country: "Canada")

  School.create(id: 30, name:"Excitement Elementary", ko_school_id: 333, logo_url: "http://s3.amazonaws.com/krossover-com-prod-teamimages/user_data/basketball2/teamlogo/11814.jpg",
                        city: "Bland City", state: "Rhode Island", country: "Mexico")

  School.create(id: 40, name:"Gill Saint Bern ", ko_school_id: 444, logo_url: "http://s3.amazonaws.com/krossover-com-prod-teamimages/user_data/basketball2/teamlogo/11814.jpg",
                        city: "New Jersey", state: "Slow Island", country: "Mexico")

  School.create(id: 50, name:"Herricks High School", ko_school_id: 555, logo_url: "http://s3.amazonaws.com/krossover-com-prod-teamimages/user_data/basketball2/teamlogo/11814.jpg",
                        city: "New Hyde park", state: "NY", country: "Mexico")

  School.create(id: 60, name:"Brooklyn Tech", ko_school_id: 666, logo_url: "http://s3.amazonaws.com/krossover-com-prod-teamimages/user_data/basketball2/teamlogo/11814.jpg",
                        city: "Brooklyn", state: "New York", country: "Mexico")

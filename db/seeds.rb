# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

news = News.create(
		[
			{
				title:"Gamespy shutting down",
				text:"For those that are not aware, Gamespy announced about a month ago, that they would be shutting down their servers (aka the ingame multiplayer server browers, that is all going thru Gamespy), to popular games like the Battlefield Series, Arma Series.. and many more..    I am under the impression that they are in the works to get Steam to take over that ingame work, but not sure if it will be in effect by Sat....\nSo please bear with us, our server MAY be down for a few hours/days until we know how to get the server reporting to Steam.\n-19th Staff"
			},
			{
				title:"New Pilots",
				text:"Raven has aquired new pilots. Hooray."
			}
		]
	)
events = Event.create(
		[
			{
				title:"Bootcamp",
				description:"Bootcamp for cadets to the 19th",
				date:DateTime.now
			}
		]
	)
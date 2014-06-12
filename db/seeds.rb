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
				text:"For those that are not aware, Gamespy announced about a month ago, that they would be shutting down their servers (aka the ingame multiplayer server browers, that is all going thru Gamespy), to popular games like the Battlefield Series, Arma Series.. and many more..    I am under the impression that they are in the works to get Steam to take over that ingame work, but not sure if it will be in effect by Sat....\nSo please bear with us, our server MAY be down for a few hours/days until we know how to get the server reporting to Steam.\n-19th Staff",
				parsed_text:"For those that are not aware, Gamespy announced about a month ago, that they would be shutting down their servers (aka the ingame multiplayer server browers, that is all going thru Gamespy), to popular games like the Battlefield Series, Arma Series.. and many more..    I am under the impression that they are in the works to get Steam to take over that ingame work, but not sure if it will be in effect by Sat....\nSo please bear with us, our server MAY be down for a few hours/days until we know how to get the server reporting to Steam.\n-19th Staff"
			},
			{
				title:"New Pilots",
				text:"Raven has aquired new pilots. *Hooray*.",
				parsed_text:"Raven has aquired new pilots. <em>Hooray</em>."
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

platoons = Platoon.create(
		[
			{
				name:"Able"
			}
		]
	)
squads = Squad.create(
		[
			{
				name:"Alpha",
				insignia_url:"http://i.imgur.com/iXokc68.png",
				platoon_id:1
			},
			{
				name:"Bravo",
				platoon_id:1
			},
			{
				name:"Charlie",
				platoon_id:1
			},
			{
				name:"Reaper",
				insignia_url:"http://i.imgur.com/QV58SUr.png",
				platoon_id:1
			},
			{
				name:"Raven",
				insignia_url:"http://i.imgur.com/kZsqZBK.png",
				platoon_id:1
			}
		]
	)
fireteams = Fireteam.create(
		[
			{
				name:"Alpha 1-1",
				squad_id:1
			},
			{
				name:"Alpha 1-2",
				squad_id:1
			},
			{
				name:"Alpha 1-3",
				squad_id:1
			},
			{
				name:"Bravo 1-1",
				squad_id:2
			},
			{
				name:"Bravo 1-2",
				squad_id:2
			},
			{
				name:"Bravo 1-3",
				squad_id:2
			},
			{
				name:"Charlie 1-1",
				squad_id:3
			},
			{
				name:"Charlie 1-2",
				squad_id:3
			},
			{
				name:"Charlie 1-3",
				squad_id:3
			},
			{
				name:"Reaper",
				squad_id:4
			},
			{
				name:"Raven",
				squad_id:5
			}
		]
	)
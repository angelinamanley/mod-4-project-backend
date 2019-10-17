# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Message.destroy_all
Session.destroy_all
User.destroy_all
Room.destroy_all


angie = User.create(username: "angie")
paco = User.create(username: "paco")
george = User.create(username: "george")
tegan = User.create(username: "tegan")
erin = User.create(username: "erin")

room1 = Room.create()
room2 = Room.create()
room3 = Room.create()
room4 = Room.create()
room5 = Room.create()

session1 = Session.create(user: angie, room: room1)
session2 = Session.create(user: paco, room: room1)
session3 = Session.create(user: erin, room: room2)
session4 = Session.create(user: tegan, room: room2)
session5 = Session.create(user: george, room: room3)

message1 = Message.create(session: session1, content: "Hi")
message2 = Message.create(session: session2, content: "Go away")
message3 = Message.create(session: session1, content: "No, YOU go away. Also you smell")
message4 = Message.create(session: session2, content: "Ok, I'm sorry")

message5 = Message.create(session: session3, content: "Hi Tegan")
message6 = Message.create(session: session4, content: "Bore off")
message7 = Message.create(session: session3, content: "I'm sorry, because I'm so nice and cheerful")
message8 = Message.create(session: session4, content: "ok ")
message9 = Message.create(session: session5, content: "I'm all by myself")
message10 = Message.create(session: session5, content: "Someone please talk to me")



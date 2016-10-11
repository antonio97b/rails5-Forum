# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(email: "test@test.com", password: "password1")

forum1 = Forum.create!(name: "News", description: "A forum for all the current happenings in the world.", user_id: user.id)
forum2 = Forum.create!(name: "Politics", description: "A place to discuss the latest in politics! (Ugh...)", user_id: user.id)
forum3 = Forum.create!(name: "Funny", description: "No Funny business allowed.", user_id: user.id)

Post.create!(title: "Are German Shepherds the best dogs ever?", description: "A recent news survey says that German Shepherds are indeed the best dog ever in the state of Oregon.", user_id: user, forum_id: forum1.id)
Post.create!(title: "Traffic in Portland on the rise", description: "PBOT says that traffic has seen a steady increase since 2012", user_id: user, forum_id: forum1.id)
Post.create!(title: "Are cats better than dogs?", description: "NEVER", user_id: user, forum_id: forum1.id)
Post.create!(title: 'NSAC fines Conor McGregor $150,000k and orders 50 hours of community service for his actions at UFC 202 press conference "water fight."', description: "", user_id: user, forum_id: forum1.id)
user = User.create!(email: "test@test.com", password: "password1")

forum1 = Forum.create!(name: "News", description: "A forum for all the current happenings in the world.", user_id: user.id)
forum2 = Forum.create!(name: "Politics", description: "A place to discuss the latest in politics! (Ugh...)", user_id: user.id)
forum3 = Forum.create!(name: "Funny", description: "No Funny business allowed.", user_id: user.id)

post1 = forum1.posts.create!(title: "Are German Shepherds the best dogs ever?", description: "A recent news survey says that German Shepherds are indeed the best dog ever in the state of Oregon.", user_id: user.id)
post2 = forum1.posts.create!(title: "Traffic in Portland on the RISE", description: "PBOT says that traffic has seen a steady increase since 2012", user_id: user.id)
post3 = forum1.posts.create!(title: "Are cats better than dogs?", description: "NEVER", user_id: user.id)
post4 = forum1.posts.create!(title: 'NSAC fines Conor McGregor $150,000k and orders 50 hours of community service for his actions at UFC 202 press conference "water fight."', user_id: user.id)

# Comments

comment1 = Comment.create(body: "comment body", commentable_id: post1.id , commentable_type: "Post", user_id: user.id)
comment2 = Comment.create(body: "comment on a comment", commentable_id: comment1.id , commentable_type: "Comment", user_id: user.id)
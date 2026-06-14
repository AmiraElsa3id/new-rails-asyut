# Users (creators)
alice = User.create!(name: "Alice", email: "alice@example.com")
bob   = User.create!(name: "Bob",   email: "bob@example.com")

# Posts (1:M — each post belongs to a creator/user)
post1 = Post.create!(title: "Rails Associations", body: "Deep dive into Active Record associations.", user_id: alice.id)
post2 = Post.create!(title: "MVC Pattern",        body: "Understanding Model-View-Controller.",      user_id: alice.id)
post3 = Post.create!(title: "Ruby Basics",         body: "Getting started with Ruby.",               user_id: bob.id)

# Editors
ed1 = Editor.create!(name: "Carol", email: "carol@example.com")
ed2 = Editor.create!(name: "Dave",  email: "dave@example.com")
ed3 = Editor.create!(name: "Eve",   email: "eve@example.com")

# Post <-> Editor (M:M via join table post_editors)
PostEditor.create!(post: post1, editor: ed1)
PostEditor.create!(post: post1, editor: ed2)
PostEditor.create!(post: post2, editor: ed2)
PostEditor.create!(post: post2, editor: ed3)
PostEditor.create!(post: post3, editor: ed1)
PostEditor.create!(post: post3, editor: ed3)

puts "Seeded: #{User.count} users, #{Post.count} posts, #{Editor.count} editors, #{PostEditor.count} post_editors"

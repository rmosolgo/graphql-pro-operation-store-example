Person.destroy_all
Post.destroy_all

p1 = Person.create!(handle: "dhh")
p1.posts.create!(content: "Remote work is good!")
p1.posts.create!(content: "🎊 Rails!")

p2 = Person.create!(handle: "antirez")
p2.posts.create!(content: "Look at this cool data structure")
p2.posts.create!(content: "A new Redis version is out!")

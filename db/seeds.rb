Post.destroy_all

p1 = Post.create(title: "Baking 101", content: "Make sure you have all ingredients.", author: "Laura")

p2 = Post.create(title: "Code 101", content: "Write commands in terminal.", author: "John")

p3 = Post.create(title: "Sailing 101", content: "Wear a lifejacket", author: "Tim")

t1 = Tag.create(name:"LauraTag")
t2 = Tag.create(name:"JohnTag")
t3 = Tag.create(name:"ElieTag")
t4 = Tag.create(name:"TimTag")

p1.tags << t1 
p2.tags << t2
p3.tags << t4
p3.tags << t3


Post.create({
	title: "Learning 101", 
	content: "Take a deep breath and relax",
	author: "Elie"
	})
User.destroy_all
Todo.destroy_all

kat = User.create(username: "kitkat", password: "pw")

Todo.create(title: "First todo", content: "This is my first item", urgent: false, done: false, user: kat)
Todo.create(title: "Second todo", content: "This is my second item", urgent: false, done: false, user: kat)
Todo.create(title: "Third todo", content: "This is my third item", urgent: true, done: false, user: kat)
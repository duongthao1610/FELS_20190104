User.create! email: "user1@example.com", password:"111111", name: "Hieu Hoang Trong", image: File.open("app/assets/images/Hieu.jpg")
User.create! email: "user2@example.com", password:"111111", name: "Phan Quynh Nhu",
  image: File.open("app/assets/images/Rose.jpg")
User.create! email: "user3@example.com", password:"111111", name: "Ngo Trang Ngan",
  image: File.open("app/assets/images/jennie.png")

6.times do |n|
  Course.create!  name: "Basic #{n+1}",
                  description: "Description: Basic #{n+1}",
                  image: "course_#{n+1}.jpg"
end

Course.create!  name: "Basic 4",
                description: "Description: Basic 4",
                image: "course_4.jpg"

Course.create!  name: "Basic 5",
                description: "Description: Basic 5",
                image: "course_5.jpg"

Course.create!  name: "Basic 6",
                description: "Description: Basic 6",
                image: "course_6.jpg"

Word.create!  content: "Apple",
              course_id: 1

Word.create!  content: "Cat",
              course_id: 1

Word.create!  content: "Doctor",
              course_id: 2

WordAnswer.create!  content: "Quả táo",
                    correct: true,
                    word_id: 1

WordAnswer.create!  content: "Quả cam",
                    correct: false,
                    word_id: 1

WordAnswer.create!  content: "Quả ổi",
                    correct: false,
                    word_id: 1

WordAnswer.create!  content: "Quả xoài",
                    correct: false,
                    word_id: 1

WordAnswer.create!  content: "Con mèo",
                    correct: true,
                    word_id: 2

WordAnswer.create!  content: "Con chó",
                    correct: false,
                    word_id: 2

WordAnswer.create!  content: "Con bò",
                    correct: false,
                    word_id: 2

WordAnswer.create!  content: "Con trâu",
                    correct: false,
                    word_id: 2

WordAnswer.create!  content: "Bác sĩ",
                    correct: true,
                    word_id: 3

WordAnswer.create!  content: "Nông dân",
                    correct: false,
                    word_id: 3

WordAnswer.create!  content: "Giáo viên",
                    correct: false,
                    word_id: 3

WordAnswer.create!  content: "Công an",
                    correct: false,
                    word_id: 3

30.times do |n|
  Word.create!  content: "Word #{n+1}",
                course_id: rand(2..6)
  WordAnswer.create!  content: "Answer #{n+1} true",
                      correct: true,
                      word_id: n+4
  WordAnswer.create!  content: "1 Answer #{n+1} false",
                      correct: false,
                      word_id: n+4
  WordAnswer.create!  content: "2 Answer #{n+1} false",
                      correct: false,
                      word_id: n+4
  WordAnswer.create!  content: "3 Answer #{n+1} false",
                      correct: false,
                      word_id: n+4
end

a = Relationship.create! followed_id: 1, follower_id: 2
a.create_activity :create, owner: User.find(a.follower_id), recipient: User.find(a.followed_id)
a.create_activity :destroy, owner: User.find(a.follower_id), recipient: User.find(a.followed_id)
a.destroy

a = Relationship.create! followed_id: 1, follower_id: 3
a.create_activity :create, owner: User.find(a.follower_id), recipient: User.find(a.followed_id)
a.create_activity :destroy, owner: User.find(a.follower_id), recipient: User.find(a.followed_id)
a.destroy

a = Relationship.create! followed_id: 2, follower_id: 3
a.create_activity :create, owner: User.find(a.follower_id), recipient: User.find(a.followed_id)
a.create_activity :destroy, owner: User.find(a.follower_id), recipient: User.find(a.followed_id)
a.destroy

a = Relationship.create! followed_id: 2, follower_id: 1
a.create_activity :create, owner: User.find(a.follower_id), recipient: User.find(a.followed_id)
a.create_activity :destroy, owner: User.find(a.follower_id), recipient: User.find(a.followed_id)
a.destroy

a = Relationship.create! followed_id: 3, follower_id: 1
a.create_activity :create, owner: User.find(a.follower_id), recipient: User.find(a.followed_id)
a.create_activity :destroy, owner: User.find(a.follower_id), recipient: User.find(a.followed_id)
a.destroy

a = Relationship.create! followed_id: 3, follower_id: 2
a.create_activity :create, owner: User.find(a.follower_id), recipient: User.find(a.followed_id)
a.create_activity :destroy, owner: User.find(a.follower_id), recipient: User.find(a.followed_id)
a.destroy

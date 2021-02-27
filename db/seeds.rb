# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

posts = [
{
  lecture: "バレーボール",
  teacher: "東良太郎",
  category: "健康スポーツ科学",
  year: 2019,
  term: "春",
  evaluation: "最悪",
  cause: "勉強不足",
  comment: "めっちゃ楽しいけど寝坊した"
},
{
  lecture: "生物学基礎",
  teacher: "諸星かずき",
  category: "理系教養科目",
  year: 2020,
  term: "春",
  evaluation: "普通",
  cause: "提出物を出していない",
  comment: "生物の内容を全然取り扱ってない"
},
{
  lecture: "コンピュータ科学演習",
  teacher: "鈴木礼司",
  category: "専門科目",
  year: 2020,
  term: "秋",
  evaluation: "最良",
  cause: "不明",
  comment: "超難しい"
},
]
for i in 0...10
  for post in posts
    post = Post.create(post)
    post.save
  end
end
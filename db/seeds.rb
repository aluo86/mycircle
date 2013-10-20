# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DEFAULT_INSECURE_PASSWORD = 'Road2323'

User.create({
  first_name: "Nancy",
  last_name: "Qi",
  profile_name: "nqi",
  email: "fgqi10@gmail.com",
  password: DEFAULT_INSECURE_PASSWORD,
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
  first_name: "Andrew",
  last_name: "Luo",
  profile_name: "aluo",
  email: "andrewluo@gmail.com",
  password: DEFAULT_INSECURE_PASSWORD,
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
  first_name: "Yimin",
  last_name: "Luo",
  profile_name: "yluo",
  email: "yiminluo@gmail.com",
  password: DEFAULT_INSECURE_PASSWORD,
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
  first_name: "Huizhen",
  last_name: "Zhong",
  profile_name: "hzhong",
  email: "zhzfruit@hotmail.com",
  password: DEFAULT_INSECURE_PASSWORD,
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
  first_name: "Michelle",
  last_name: "Luo",
  profile_name: "mluo",
  email: "aluousa@hotmail.com",
  password: DEFAULT_INSECURE_PASSWORD,
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})

aluo = User.find_by_email('andrewluo@gmail.com')
yluo   = User.find_by_email('yiminluo@gmail.com')
hzhong  = User.find_by_email('zhzfruit@hotmail.com')
nqi  = User.find_by_email('fgqi10@gmail.com')
mluo  = User.find_by_email('aluousa@hotmail.com')

seed_user = aluo

seed_user.statuses.create(content: "Hello, world!")
yluo.statuses.create(content: "Hi, I'm yimin")
hzhong.statuses.create(content: "Hello from the internet!")
nqi.statuses.create(content: "I want to learn html javapress")
mluo.statuses.create(content: "Mycircle is awesome!")

UserFriendship.request(seed_user, yluo).accept!
UserFriendship.request(seed_user, hzhong).block!
UserFriendship.request(seed_user, nqi)
UserFriendship.request(mluo, seed_user)

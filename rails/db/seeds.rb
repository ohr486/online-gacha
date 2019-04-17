# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reward.create!(name: "Tシャツ", rate: 18.8,
               description: "サイズに限りがありますのでお早めにお受け取りください",
               image_url: "https://s3-ap-northeast-1.amazonaws.com/ohr-asset-test/reward_rk2019_T-shirt.jpg",
               possession_count: 94, distributed_count: 0)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reward.create!(name: "プランニングポーカー", rate: 12.12,
               description: "ドリコム特製プランニングポーカー",
               image_url: "https://s3-ap-northeast-1.amazonaws.com/ohr-asset-test/reward_poker.png",
               possession_count: 40, distributed_count: 0)

Reward.create!(name: "Tシャツ", rate: 15.15,
               description: "サイズに限りがありますのでお早めにお受け取りください",
               image_url: "https://s3-ap-northeast-1.amazonaws.com/ohr-asset-test/reward_T-shirt.png",
               possession_count: 50, distributed_count: 0)

Reward.create!(name: "ステッカー", rate: 72.73,
               description: "ドリコムロゴステッカー",
               image_url: "https://s3-ap-northeast-1.amazonaws.com/ohr-asset-test/reward_sticker.png",
               possession_count: 500, distributed_count: 0)

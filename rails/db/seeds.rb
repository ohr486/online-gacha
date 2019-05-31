# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reward.create!(name: "Tシャツ", rate: 35.0,
               description: "サイズに限りがありますのでお早めにお受け取りください",
               image_url: "https://ohr-asset-test.s3-ap-northeast-1.amazonaws.com/reward_T-shirt.png",
               possession_count: 75, distributed_count: 0)

Reward.create!(name: "参加賞", rate: 65.0,
               description: "ドリコムステッカー・ノート",
               image_url: "https://ohr-asset-test.s3-ap-northeast-1.amazonaws.com/reward_note.JPG",
               possession_count: 165, distributed_count: 0)

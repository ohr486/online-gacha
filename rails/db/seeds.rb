# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reward.create!(name: "Drecomマグカップ", rate: 35.0,
               description: "ドリコムノベルティ",
               image_url: "https://ohr-asset-test.s3-ap-northeast-1.amazonaws.com/reward_MagCup.JPG",
               possession_count: 30, distributed_count: 0)

Reward.create!(name: "参加賞", rate: 65.0,
               description: "ドリコムステッカー・ノート",
               image_url: "https://ohr-asset-test.s3-ap-northeast-1.amazonaws.com/reward_note.JPG",
               possession_count: 100, distributed_count: 0)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(0..4).each do |i|
  Reward.create!(name: "報酬#{i}", description: "報酬#{i}の説明", rate: 5.0,
                 image_url: "http://placehold.it/350x150##{i}", possession_count: 10+i, distributed_count: i)
end

class CreateTweetTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :tweet_templates do |t|
      t.date :tweet_day
      t.text :message
      t.text :link

      t.timestamps
    end
  end
end

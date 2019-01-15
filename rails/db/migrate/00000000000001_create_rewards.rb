class CreateRewards < ActiveRecord::Migration[5.2]
  def change
    create_table :rewards do |t|
      t.string :name
      t.string :description
      t.float :rate
      t.string :image_url

      t.timestamps
    end
  end
end

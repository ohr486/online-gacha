class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :user_name
      t.string :user_nickname
      t.string :image_url
      t.string :token
      t.string :secret

      t.timestamps
    end
  end
end

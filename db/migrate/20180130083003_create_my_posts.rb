class CreateMyPosts < ActiveRecord::Migration
  def change
    create_table :my_posts do |t|
      t.string :title
      t.date :date
      t.string :article
      t.string :picture
      t.integer :user_id
      t.timestamps null: false
    end
  end
end

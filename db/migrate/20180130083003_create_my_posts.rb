class CreateMyPosts < ActiveRecord::Migration
  def change
    create_table :my_posts do |t|
      t.string :titre
      t.date :date
      t.string :chapeau
      t.string :vignette
      t.string :auteur

      t.timestamps null: false
    end
  end
end

class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.float :num_stars
      t.string :content
      t.string :photos
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps

    end
  end
end

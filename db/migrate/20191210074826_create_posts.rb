class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :before_img_id
      t.text :after_img_id
      t.datetime :time_length
      t.string :caption
      t.integer :category_id
      t.integer :owned_tag_id
      t.integer :page_views

      t.timestamps
    end
  end
end

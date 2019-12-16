class ChangeDataBeforeImgToAposts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :before_img, :string
  end

  def change
    change_column :posts, :after_img, :string
  end
end

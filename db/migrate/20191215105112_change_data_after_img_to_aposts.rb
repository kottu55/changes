class ChangeDataAfterImgToAposts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :before_img, :string
  end
end

class RenameAfterImgIdColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :before_img_id, :before_img
  end
end

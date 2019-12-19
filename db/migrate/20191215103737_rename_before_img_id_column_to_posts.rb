class RenameBeforeImgIdColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :before_img_id, :before_img
  end

  def change
    rename_column :posts, :after_img_id, :after_img
  end

end

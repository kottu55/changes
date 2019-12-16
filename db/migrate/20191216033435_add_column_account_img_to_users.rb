class AddColumnAccountImgToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :account_img, :string
  end
end

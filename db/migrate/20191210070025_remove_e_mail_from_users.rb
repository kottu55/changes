class RemoveEMailFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :e_mail, :string
  end
end

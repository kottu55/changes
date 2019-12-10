class ChangeColumnToUser < ActiveRecord::Migration[5.2]
  # 変更内容
  def up
    change_column :users, :account_name, :string, null: false, limit: 20, :unique => true
  end

  # 変更前の状態
  def down
    change_column :users, :uuid, :string, null: true, default: 0
  end
end

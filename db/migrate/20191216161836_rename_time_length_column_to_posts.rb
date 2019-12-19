class RenameTimeLengthColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :time_length, :time_unit
  end
end

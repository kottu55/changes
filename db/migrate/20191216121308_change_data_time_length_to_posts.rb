class ChangeDataTimeLengthToPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :time_length, :string
  end
end

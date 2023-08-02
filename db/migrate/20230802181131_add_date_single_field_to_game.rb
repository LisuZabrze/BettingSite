class AddDateSingleFieldToGame < ActiveRecord::Migration[7.0]
  def change
    remove_column :games, :date, :date
    remove_column :games, :time, :time
    add_column :games, :date, :datetime
  end
end

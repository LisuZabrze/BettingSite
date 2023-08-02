class AddDateToGame < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :date, :date
    add_column :games, :time, :time
  end
end

class AddTeamsToGame < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :team_home, :integer
    add_column :games, :team_away, :integer
  end
end

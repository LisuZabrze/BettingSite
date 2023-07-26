class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :score_home
      t.integer :score_away

      t.timestamps
    end
  end
end

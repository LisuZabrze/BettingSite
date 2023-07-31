class CreateBets < ActiveRecord::Migration[7.0]
  def change
    create_table :bets do |t|
      t.integer :bet_score_1
      t.integer :bet_score_2

      t.timestamps
    end
  end
end

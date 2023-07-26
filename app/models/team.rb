class Team < ApplicationRecord
  has_many :home_games, :class_name => "Game", :foreign_key => "team_home"
  has_many :away_games, :class_name => "Game", :foreign_key => "team_away"
end

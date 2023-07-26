class Game < ApplicationRecord
  belongs_to :team_home, :class_name => "Team", :foreign_key => "team_home"
  belongs_to :team_away, :class_name => "Team", :foreign_key => "team_away"
end

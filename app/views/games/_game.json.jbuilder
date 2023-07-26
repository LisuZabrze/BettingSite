json.extract! game, :id, :score_home, :score_away, :created_at, :updated_at
json.url game_url(game, format: :json)

json.array!(@seasons) do |season|
  json.extract! season, :id, :number, :show_id
  json.url season_url(season, format: :json)
end

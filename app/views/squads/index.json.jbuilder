json.array!(@squads) do |squad|
  json.extract! squad, :id, :name, :insignia_url
  json.url squad_url(squad, format: :json)
end

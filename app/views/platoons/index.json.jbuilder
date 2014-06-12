json.array!(@platoons) do |platoon|
  json.extract! platoon, :id, :name, :insignia_url
  json.url platoon_url(platoon, format: :json)
end

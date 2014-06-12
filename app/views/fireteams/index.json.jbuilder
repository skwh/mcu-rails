json.array!(@fireteams) do |fireteam|
  json.extract! fireteam, :id, :name, :insignia_url
  json.url fireteam_url(fireteam, format: :json)
end

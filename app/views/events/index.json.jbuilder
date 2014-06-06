json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :date, :invited, :attending
  json.url event_url(event, format: :json)
end

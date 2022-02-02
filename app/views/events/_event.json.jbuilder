json.extract! event, :id, :event_start, :event_end, :description, :created_at, :updated_at
json.url event_url(event, format: :json)

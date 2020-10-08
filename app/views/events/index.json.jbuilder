json.array!(@events) do |event|
  json.extract! event, :count,:id, :title
  json.url  new_event_reservations_url(event, format: :html) 
  if event.date > DateTime.now-1
    json.start event.date
  else
  end
end

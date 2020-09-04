json.array!(@events) do |event|
  json.extract! event, :id, :title, :body
  json.start event.date
  # json.end event.end_date
  # json.url event_url(event, format: :html) 
  json.url  new_event_reservations_url(event, format: :html) 


end
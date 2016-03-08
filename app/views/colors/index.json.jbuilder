json.array!(@colors) do |color|
  json.extract! color, :id, :r, :g, :b
  json.url color_url(color, format: :json)
end

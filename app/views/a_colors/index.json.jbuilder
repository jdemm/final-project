json.array!(@a_colors) do |a_color|
  json.extract! a_color, :id, :r, :g, :b
  json.url a_color_url(color, format: :json)
end

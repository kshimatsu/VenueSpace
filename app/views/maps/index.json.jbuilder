json.array!(@maps) do |map|
  json.extract! map, :id, :name, :lat, :lng
  json.url map_url(map, format: :json)
end

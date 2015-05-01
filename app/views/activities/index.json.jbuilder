json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :description, :style
  json.url activity_url(activity, format: :json)
end

json.array!(@photos) do |photo|
  json.extract! photo, :id, :image_uid
  json.url photo_url(photo, format: :json)
end

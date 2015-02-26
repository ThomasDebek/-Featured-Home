json.array!(@admin_photos) do |admin_photo|
  json.extract! admin_photo, :id, :image_uid
  json.url admin_photo_url(admin_photo, format: :json)
end

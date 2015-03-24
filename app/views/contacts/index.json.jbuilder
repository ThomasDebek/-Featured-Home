json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :surname, :phone, :email, :description
  json.url contact_url(contact, format: :json)
end

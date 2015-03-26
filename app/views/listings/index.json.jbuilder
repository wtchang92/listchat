json.array!(@listings) do |listing|
  json.extract! listing, :id, :name, :price, :description, :user_id
  json.url listing_url(listing, format: :json)
end

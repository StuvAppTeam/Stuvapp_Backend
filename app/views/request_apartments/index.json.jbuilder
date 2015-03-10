json.array!(@request_apartments) do |request_apartment|
  json.extract! request_apartment, :id, :title, :description, :totalPrice, :user_id, :furnished, :type, :size, :phase, :city, :zipcode
  json.url request_apartment_url(request_apartment, format: :json)
end

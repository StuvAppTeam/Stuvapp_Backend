json.array!(@offer_apartments) do |offer_apartment|
  json.extract! offer_apartment, :id, :title, :description, :totalPrice, :image_id, :street, :city, :zipcode, :user_id, :size, :rent, :additionalCost, :phase, :deposit, :type, :moveIn, :furnished, :internet, :other, :parking, :rooms, :smoking
  json.url offer_apartment_url(offer_apartment, format: :json)
end

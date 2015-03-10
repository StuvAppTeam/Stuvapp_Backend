json.array!(@offer_blackboards) do |offer_blackboard|
  json.extract! offer_blackboard, :id, :title, :description, :totalPrice, :image_id, :street, :city, :zipcode, :user_id, :category_id, :condition
  json.url offer_blackboard_url(offer_blackboard, format: :json)
end

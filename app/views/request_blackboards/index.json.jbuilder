json.array!(@request_blackboards) do |request_blackboard|
  json.extract! request_blackboard, :id, :title, :description, :totalPrice, :user_id, :category_id, :condition
  json.url request_blackboard_url(request_blackboard, format: :json)
end

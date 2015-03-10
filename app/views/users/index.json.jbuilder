json.array!(@users) do |user|
  json.extract! user, :id, :gender, :firstName, :lastName, :email, :password, :userName, :birthdate, :phone, :type
  json.url user_url(user, format: :json)
end

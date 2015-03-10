class Category < ActiveRecord::Base
  has_many :request_blackboards
  has_many :offer_blackboards
end

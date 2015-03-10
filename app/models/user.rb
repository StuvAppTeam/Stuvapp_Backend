class User < ActiveRecord::Base
  has_many :offer_apartments
  has_many :offer_blackboards
  has_many :request_apartments
  has_many :request_blackboards
end

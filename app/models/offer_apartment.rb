class OfferApartment < ActiveRecord::Base
  has_many :images
  has_one :user
end

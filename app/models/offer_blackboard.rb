class OfferBlackboard < ActiveRecord::Base
  has_many :images
  has_one :user
  has_one :category
end

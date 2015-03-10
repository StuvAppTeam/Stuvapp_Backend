class RequestApartment < ActiveRecord::Base
  has_one :user
end

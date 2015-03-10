class RequestBlackboard < ActiveRecord::Base
  has_one :user
  has_one :category
end

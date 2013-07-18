class UserAddress < ActiveRecord::Base
  belongs_to :user
  belongs_to :address
  attr_accessible :user_id, :address_id
end

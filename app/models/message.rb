class Message < ActiveRecord::Base
  belongs_to :from_user, class_name: "User"
  belongs_to :to_user, class_name: "User"
  attr_accessible :message, :to_user_id
end

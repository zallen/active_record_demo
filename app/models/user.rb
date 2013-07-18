class User < ActiveRecord::Base

  attr_accessible :email_address, :first_name, :last_name, :password, :password_confirmation, :phone_number

  has_many :addresses, through: :user_addreses
  has_many :sent_messages, class_name: "Message", foreign_key: "from_user_id", dependent: :destroy
  has_many :received_messages, class_name: "Message", foreign_key: "to_user_id", dependent: :destroy

  has_secure_password

  VALID_EMAIL_ADDRESS_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_NUMBER_REGEX = /\A[0-9]{3}-[0-9]{3}-[0-9]{4}\z/
  PASSWORD_3_OF_4_CHARACTER_CLASSES_REGEX = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+/
  
  validates(:email_address, presence: true, format: { with: VALID_EMAIL_ADDRESS_REGEX }, uniqueness: { case_sensitive: false } )
  validates(:first_name, presence: true, length: { maximum: 50 } )
  validates(:last_name, presence: true, length: { maximum: 50 } )
  validates(:password, presence: true, length: { minimum: 8 }, format: { with: PASSWORD_3_OF_4_CHARACTER_CLASSES_REGEX } )
  validates(:password_confirmation, presence: true)
  validates(:phone_number, presence: true, format: { with: VALID_PHONE_NUMBER_REGEX }, uniqueness: { case_sensitive: false } )

end

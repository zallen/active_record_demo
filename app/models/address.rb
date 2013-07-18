class Address < ActiveRecord::Base

  attr_accessible :building_address, :city, :state, :street_address, :zip_code

  has_many :users, through: :user_addresses

  VALID_STATE_REGEX = /\b(?:A[KLRZ]|C[AOT]|D[CE]|FL|GA|HI|I[ADLN]|K[SY]|LA|M[ADEINOST]|N[CDEHJMVY]|O[HKR]|PA|RI|S[CD]|T[NX]|UT|V[AT]|W[AIVY])\b/
  VALID_ZIP_CODE_REGEX = /\b[0-9]{5}-[0-9]{4}\b/

  validates :building_address, length: { maximum: 50 }
  validates :city, presence: true, length: { maximum: 50 }
  validates :state, presence: true, format: { with: VALID_STATE_REGEX }
  validates :street_address, presence: true, length: { maximum: 50 }
  validates :zip_code, presence: true, format: { with: VALID_ZIP_CODE_REGEX }

end

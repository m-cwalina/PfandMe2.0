class Picker < ApplicationRecord
  has_many :appointments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end

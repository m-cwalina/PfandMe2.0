class Picker < ApplicationRecord
  has_many :appointments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  acts_as_mappable :lat_column_name => :latitude,
                   :lng_column_name => :longitude
end

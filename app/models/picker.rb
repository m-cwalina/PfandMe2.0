class Picker < ApplicationRecord
  has_many :appointments, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  acts_as_mappable :lat_column_name => :latitude,
                   :lng_column_name => :longitude
end

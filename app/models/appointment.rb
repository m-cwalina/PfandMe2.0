class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :picker
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  acts_as_mappable :default_units => :miles,
                   :lat_column_name => :latitude,
                   :lng_column_name => :longitude
end

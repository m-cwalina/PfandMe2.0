class Picker < ApplicationRecord
  has_many :appointments, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  geocoded_by :address
  after_validation :geocode
  acts_as_mappable :lat_column_name => :latitude,
                   :lng_column_name => :longitude
  # validate :address_presence
  private

  def address_presence
    if latitude.blank? || longitude.blank?
      errors.add(:address, "We couldn't find that address")
    end
  end
end

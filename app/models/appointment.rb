class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :picker
  validates :date, :time, :address, presence: true
  validates :bottle, numericality: { greater_than: 5 }
  validate :date_amount
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  acts_as_mappable :default_units => :miles,
                   :lat_column_name => :latitude,
                   :lng_column_name => :longitude

  def date_amount
    if date.present? && date > Date.today + 7.days
      errors.add(:date, 'cannot be more then 7 days into the future')
    end
  end
end

class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :picker
  validates :date, :time, :address, presence: true
  validates :bottle, numericality: { greater_than: 5 }
  validate :date_amount, on: :create
  validate :future_time, on: :create
  validate :address_presence, on: :create
  # validate :opening_times, on: :create
  enum status: [:in_progress, :completed]
  after_initialize :set_default_status, if: :new_record?
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  acts_as_mappable :default_units => :miles,
                   :lat_column_name => :latitude,
                   :lng_column_name => :longitude

  private

  def date_amount
    if date.present? && date > Date.today + 1.day
      errors.add(:date, 'needs to be today')
    end
  end

  def set_default_status
    self.status ||= :in_progress
  end

  def future_time
    if time.present? && time < Time.now + 900
      errors.add(:time, 'must be 15 min ahead of current time')
    end
  end

  def address_presence
    if latitude.blank? || longitude.blank?
      errors.add(:address, "We couldn't find that address")
    end
  end

  def opening_times
    if time.present? && Time.now.between?(Time.new(10), Time.new(23))
      errors.add(:time, 'is not between our opening hours. We are open from 10 till 23')
    end
  end
end

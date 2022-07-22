class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments, dependent: :destroy
  enum role: [:customer, :employee]
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end

end

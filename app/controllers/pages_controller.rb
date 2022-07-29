class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home, :about, :contact]

  def home
  end

  def about
  end

  def contact
  end

  def dashboard
    # This is used to map all pickers on map
    @pickers = Picker.all
    @markers = @pickers.geocoded.map do |picker|
      {
        lat: picker.latitude,
        lng: picker.longitude
      }
    end
    # Setting the current_user helper to @user instance variable
    @user = current_user
    # An ActiveRecord SQL query to find appointments where the status is still in_progress
    @current_orders = current_user.appointments.where(status: 'in_progress')
    # An ActiveRecord SQL query to find appointments where the status is completed within a range of 30 previous days
    @past_orders = current_user.appointments.where(status: 'completed', date: Date.current..(Date.current - 30.days))
    # Finding the current users with appointments bottles and summing them up
    @bottles = current_user.appointments.sum(:bottle)
    # Finding the amount of donations by multiplying the bottles with an arbitrary set price per bottle
    @amount = (@bottles * 0.121).to_i
  end
end

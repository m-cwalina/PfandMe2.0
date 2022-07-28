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
    # Finding the current user with appoinments in the range of the last 30 days
    @past_orders = current_user.appointments.where(status: 'completed')
    # Finding the current users with appointments bottles and summing them up
    @bottles = current_user.appointments.sum(:bottle)
    # Finding the amount of donations by multiplying the bottles with an arbitrary set price per bottle
    @amount = (@bottles * 0.121).to_i
  end
end

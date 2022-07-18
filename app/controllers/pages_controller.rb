class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home, :about, :contact]

  def home
  end

  def about
  end

  def contact
  end

  def dashboard
    # Assigning current_user to instance variable @user
    @user = current_user
    # Finding the current user with appoinments in the range of the last 30 days
    @past_orders = current_user.appointments.where(date: Date.today - 30.day...Date.today)
    # Finding the current users with appointments bottles and summing them up
    @bottles = current_user.appointments.sum(:bottle)
    # Calculating the amount one donated from bottles
    @amount = (@bottles * 0.15).to_f
  end
end

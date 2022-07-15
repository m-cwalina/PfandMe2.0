class PagesController < ApplicationController
  before_action :authenticate_user!, except: :home

  def home
  end

  def dashboard
    # Assigning current_user to instance variable @user
    @user = current_user
    # Finding the current user with appoinments in the range of the last 30 days
    @past_orders = User.find_by(id: current_user).appointments.where(date: Date.today - 30.day...Date.today)
    # Finding the current users with appointments bottles and summing them up
    @bottles = User.find_by(id: current_user).appointments.sum(:bottle)
  end
end

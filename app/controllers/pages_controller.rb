class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home, :about, :contact]

  def home
  end

  def about
  end

  def contact
  end

  def dashboard
    @user = current_user
    @current_orders = current_user.appointments.where('date <= ?', Date.today + 7.days)
    # Finding the current user with appoinments in the range of the last 30 days
    @past_orders = current_user.appointments.where(date: Date.today - 30.day...Date.today)
    # Finding the current users with appointments bottles and summing them up
    @bottles = current_user.appointments.sum(:bottle)
    @amount = (@bottles * 0.121).to_i
  end
end

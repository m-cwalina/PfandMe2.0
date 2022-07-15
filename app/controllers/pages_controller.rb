class PagesController < ApplicationController
  before_action :authenticate_user!, except: :home

  def Home
  end

  def Dashboard
  end
end

class CalendarsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]


  def index
    @calendar = Calendar.all
  end

  def new
    @calendar = Calendar.new
  end

  def create
    @calendars = Calendar.new(calendar_params)
    @calendars.save
    redirect_to calendars_path
  end

  private

  def calendar_params
    params.permit(:title, :content, :start_time).merge(user_id: current_user.id)
  end


end

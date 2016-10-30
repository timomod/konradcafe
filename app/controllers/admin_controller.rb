class AdminController < ApplicationController

  layout "devise"
  before_action :find_event, only: [:show]

  def dashboard
  end

  def index
    if params[:approved] == "false"
      @users = User.where(approved: false)
    else
      @users = User.all
    end
  end

  def show
  end


private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :subtitle, :body, :weekday, :day, :month, :year, :publish, :start, :end)
  end




end

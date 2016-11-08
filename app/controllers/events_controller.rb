class EventsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  layout "devise", only: [:admin, :new, :create, :show, :edit, :update, :destroy, :list]

  before_action :find_event, only: [:show, :edit, :update, :destroy]

  before_action :count_events, only: [:new, :create, :edit, :update]
  # def list
  #   if params[:approved] == "false"
  #     @users = User.where(approved: false)
  #   else
  #     @users = User.all
  #   end
  # end

  def index
    @events = Event.order(position: :asc)
    @eats = Eat.last
    @cover = Event.where(cover: true).first
    @curry = Curry.find(1)
  end

   def admin
      @events = Event.order(position: :asc)
  end

  def new
    @event = Event.new
  end

  def create
   @event = Event.new(event_params)
    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event.destroy
    redirect_to events_admin_path
  end



  private

  def count_events
    @count = Event.where(publish: "Published").count + 1
  end

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :subtitle, :body, :weekday, :day, :month, :year, :publish, :start, :end, :photo, :photo_cache, :cover, :event_icon, :event_title, :event_type, :position)
  end

end

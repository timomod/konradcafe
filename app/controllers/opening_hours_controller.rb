class OpeningHoursController < ApplicationController

  layout "devise", only: [:index, :new, :create, :show, :edit, :update, :destroy]

  before_action :find_opening_hour, only: [:show, :edit, :update, :destroy]

  def index
    @opening_hours = OpeningHour.order('created_at ASC')
  end


  def new
    @opening_hour = OpeningHour.new
  end

  def create
   @opening_hour = OpeningHour.new(opening_hour_params)
    if @opening_hour.save
      redirect_to @opening_hour
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @opening_hour.update(opening_hour_params)
      redirect_to opening_hours_path
    else
      render 'edit'
    end
  end

  def destroy
    @opening_hour.destroy
    redirect_to opening_hours_admin_path
  end



  private

  def find_opening_hour
    @opening_hour = OpeningHour.find(params[:id])
  end

  def opening_hour_params
    params.require(:opening_hour).permit(:title, :subtitle, :open_at, :open_until)
  end

end

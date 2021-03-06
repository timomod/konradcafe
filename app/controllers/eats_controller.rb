class EatsController < ApplicationController

layout "devise", only: [:index, :admin, :new, :create, :show, :edit, :update, :destroy]

  before_action :find_eat, only: [:show, :edit, :update, :destroy]

  def index
    @eats = Eat.order(position: :asc)
    @menu_header = Menu.where(header: true).first
    @menu_special = Menu.where(special: true).first
  end


   def admin
      @eats = Eat.all
  end

  def new
    @eat = Eat.new
  end

  def create
   @eat = Eat.new(eat_params)
    if @eat.save
      redirect_to @eat
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @eat.update(eat_params)
      redirect_to eats_index_path
    else
      render 'edit'
    end
  end

  def destroy
    @eat.destroy
    redirect_to eats_admin_path
  end



  private

  def find_eat
    @eat = Eat.find(params[:id])
  end

  def eat_params
    params.require(:eat).permit(:header, :subheader, :title, :subtitle, :body, :position, :menu_icon)
  end

end

class MenusController < ApplicationController

  layout "devise"

   before_action :find_menu, only: [:edit, :update]

  def edit
  end

  def update
    if @menu.update(menu_params)
      redirect_to eats_index_path
    else
      render 'edit'
    end
  end


  private

  def find_menu
    @menu = Menu.find(params[:id])
  end

  def menu_params
    params.require(:menu).permit(:title, :subtitle, :header, :special, :publish)
  end

end



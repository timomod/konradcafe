class MenusController < ApplicationController

  layout "devise"

  def edit
    @menu = Menu.find(params[:id])
  end

  def update
    if @menu.update(menu_params)
      redirect_to eats_index_path
    else
      render 'edit'
    end
  end

  private

  def menu_params
    params.require(:menu).permit(:title, :subtitle, :header, :special)
  end

end



class CoversController < ApplicationController

  layout "devise"

  before_action :find_cover, only: [:show, :edit, :update, :destroy]



  def index
    @covers = Cover.find(5)
  end



  def new
    @cover = Cover.new
  end

  def create
    @cover = Cover.new(cover_params)
    if @cover.save
      redirect_to @cover
    else
      render 'new'
    end
  end

 def show
 end

  def edit
  end

  def update
    if @cover.update(cover_params)
      redirect_to '/covers/index'
    else
      render 'edit'
    end
  end






  private

  def find_cover
    @cover = Cover.find(params[:id])
  end

  def cover_params
    params.require(:cover).permit(:title, :subtitle, :subtitle2, :body, :cover_photo, :cover_photo_cache)
  end




end

class CurriesController < ApplicationController

layout "cms", only: [:admin, :new, :create, :show, :edit, :update, :destroy]

  before_action :find_curry, only: [:show, :edit, :update, :destroy]


  def index
    @curries = Curry.all
  end

  def admin
     @curries = Curry.all
  end

  def edit
  end

  def new
      @curry = Curry.new
  end

  def create
    @curry = Curry.new(curry_params)
    if @curry.save
      redirect_to @curry
    else
      render "new"
    end
  end

  def update
    if @curry.update(curry_params)
      redirect_to @curry
    else
      render 'edit'
    end
  end

  def show
  end


private

  def find_curry
    @curry = Curry.find(params[:id])
  end

  def curry_params
    params.require(:curry).permit(:title, :description, :monday, :tuesday, :wednesday, :thursday, :friday, :curry1, :curry2, :curry3, :curry4, :curry5, :date)
  end


end

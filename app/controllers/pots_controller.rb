class PotsController < ApplicationController
  def new
    @pot = Pot.new
  end

  def create
    @pot = Pot.new(params[:pot])
    if @pot.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @pot = Pot.find(params[:id])
    @pot.destroy
    redirect_to root_path
  end

  def show
    @pot = Pot.find(params[:id])
  end

end

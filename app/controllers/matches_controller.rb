class MatchesController < ApplicationController

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(params[:match])
    if @match.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    redirect_to root_path
  end

  def show
    @match = Match.find(params[:id])
  end
end

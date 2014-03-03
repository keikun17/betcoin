class WelcomeController < ApplicationController
  # before_filter :authenticate_user!

  def index
    @pots = Pot.all
    @matches = Match.all
  end
end

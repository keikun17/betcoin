class WelcomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    @pots = Pot.all
  end
end

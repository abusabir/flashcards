class HomeController < ApplicationController
  def index
    @card = Card.first
  end

  def answer

    @answer = params[:answer]
  end
end

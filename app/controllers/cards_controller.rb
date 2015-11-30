class CardsController < ApplicationController
    def index
        @cards = Card.all
    end

    def create
        
        # @card = Card.new(params.require(:card).permit(:original_text, :translated_text, :review_date)
    end

    def show
        @card = Card.find(params[:id])
    end

    def new
    end

    def edit
    end
end

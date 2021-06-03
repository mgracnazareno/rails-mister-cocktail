# frozen_string_literal: true

class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end
end

# frozen_string_literal: true

class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Find(params[:id])
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def show
    @cocktail = Find(params[:id])
  end
end

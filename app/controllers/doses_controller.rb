# frozen_string_literal: true

class DosesController < ApplicationController
  before_action :find_cocktail

  def new
    @dose = Dose.new
  end

  def create
    @cocktail.doses = @cocktail
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to cocktail_dose_path
    else
      render :new
    end
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description)
  end
end

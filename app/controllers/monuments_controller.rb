# frozen_string_literal: true

# Monuments Controller
class MonumentsController < ApplicationController
  def index
    @monuments = Monument.all
  end

  def new
    @type_array = %w[Bevel Upright Slant Flat]
  end

  def create
    @monument = Monument.new(monument_params)
    redirect_to monuments_path if @monument.save
  end

  def show
    @monument = Monument.find(params[:id])
  end

  def edit
    @type_array = %w[Bevel Upright Slant Flat]
    @monument = Monument.find(params[:id])
  end

  def update
    @monument = Monument.find(params[:id])
    @monument.update_attributes!(monument_params)
    redirect_to monument_path(@monument)
  end

  def destroy
    @monument = Monument.find(params[:id])
    @monument.destroy
    redirect_to monuments_path
  end
end

private

def monument_params
  params.require(:monument).permit(
    :monument_type, :single, :length,
    :width, :height, :color, :price_cents, :price_currency
  )
end

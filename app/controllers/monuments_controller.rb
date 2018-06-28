# frozen_string_literal: true

# Monuments Controller
class MonumentsController < ApplicationController
  def index
    @monuments = Monument.all
  end

  def new
    @type_array = %w[Bevel Upright Slant Flat]
    @color_array = %w[Georgia\ Gray Morning\ Rose Salisbury\ Pink Autumn\ Rose
                      Flash\ Black Jet\ Black American\ Black Blue\ Silk
                      Missouri\ Red Sienna\ Red Dakota\ Mahogany
                      Canadian\ Mahogany Barre India\ Mist India\ Red
                      Night\ Star Carelian]
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
    @color_array = %w[Georgia\ Gray Morning\ Rose Salisbury\ Pink Autumn\ Rose
                      Flash\ Black Jet\ Black American\ Black Blue\ Silk
                      Missouri\ Red Sienna\ Red Dakota\ Mahogany
                      Canadian\ Mahogany Barre India\ Mist India\ Red
                      Night\ Star Carelian]
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

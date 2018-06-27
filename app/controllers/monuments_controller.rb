class MonumentsController < ApplicationController
  def index
  	@monuments = Monument.all
  end

  def new
  end

  def create
  	@monument = Monument.new(monument_params)
  	if @monument.save
  		redirect_to monuments_path
  	else
  	end
  end

  def show
  	@monument = Monument.find(params[:id])
  end

  def edit
  	@monument = Monument.find(params[:id])
  end

  def update
  	@monument = Monument.find(params[:id])
  	@monument.update_attributes!(order_params)
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
		params.require(:monument).permit(:monument_type, :single?, :length,
			:width, :height, :color, :base?, :price_currency)
	end

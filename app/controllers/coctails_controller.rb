class CoctailsController < ApplicationController

	before_action :find_coctail, only: [:show, :edit, :update, :destroy]
	def index
		@coctails=Coctail.all.order("Created_at DESC")
	end
	
	def show
	end

	def new
		@coctail=Coctail.new
	end

	def create
		@coctail=Coctail.new(coctail_params)
		if @coctail.save
			redirect_to @coctail
		else
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def coctail_params
		params.require(:coctail).permit(:date, :coctail, :ingred)
	end

	def find_coctail
		@coctail= Coctail.find(params[:id])
	end
	
end

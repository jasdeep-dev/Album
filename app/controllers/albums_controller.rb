class AlbumsController < ApplicationController
	def index
	
	end
	def new
		@picture = Picture.new
	end
	def create
		@picture=Picture.new(active_params)
		if @picture.save
			redirect_to album_path(@picture) , notice: "Successfully created new Picture" 
		else
			render :new
		end
	end

	def show
			@picture = Picture.find(params[:id])
	end

	private
		def active_params
			params.require(:album).permit(:name, {image: []})
		end
		def set_id
			@picture = Picture.find(params[:id])
		end
end

class PicsController < ApplicationController

	def index
		@pics = Pic.all
	end

	def new
		@pic = Pic.new
	end

	def create
		#Pic.create(:hor => 1,
		#	:emotion => "Stoked",
		#   :learned => "HTML and CSS ROCKS!")
		Pic.create( pics_params ) #shoves info into our data base
		redirect_to pics_path
	end	

	private

	def pics_params
		params.require(:pic).permit(:hour, :emotion, :learned)
	end

end

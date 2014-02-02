class ListsController < ApplicationController
	def index
		@lists = List.all
		
	end	

		def new
			@list = List.new

			respond_to do |format|
				format.js
			end
		end		

		def create
			@list = List.create(params[:list])

			respond_to do |format|
				format.js
			end
		end	
			
		def show
		  @list = List.find(params[:id])

		  respond_to do |format|
		  	format.js
		  end			
    end
end

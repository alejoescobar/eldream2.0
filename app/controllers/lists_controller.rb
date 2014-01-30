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
end

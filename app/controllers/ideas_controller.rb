class IdeasController < ApplicationController


	def new
		@idea = Idea.new(list_id: params[:list_id])

		respond_to do |format|
			format.js
		end
	end		

	def create
		@idea = Idea.create(params[:idea])

		respond_to do |format|
			format.js
		end
	end
end

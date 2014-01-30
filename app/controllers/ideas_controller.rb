class IdeasController < ApplicationController
	def new
		@idea = Idea.new(list_id: params[:list_id])

		respond_to do |format|
			format.js
end

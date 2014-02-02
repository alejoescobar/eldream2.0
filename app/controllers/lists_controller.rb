class ListsController < ApplicationController
before_filter :authenticate_user!

	def index
		@lists = List.where(:user_id => current_user.id)
		
	end	

		def new
			@list = List.new

			respond_to do |format|
				format.js
			end
		end		

		def create
			@list = List.create(params[:list])
			@list.user = current_user

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

    private
    def require_authentication

    end	
end

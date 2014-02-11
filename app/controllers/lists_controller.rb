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

    def update
    	@list = List.find(params[:id])
    	@list.update_attributes!(params[:list])

    	respond_to do |format|
    		format.js
    	end
    end

    def edit
    	@list = List.find(params[:id])

    	respond_to do |format|
    		format.js
    	end	
    end			

    def destroy
    	@list = List.find(params[:id])
    	@list.destroy

    	respond_to do |format|
    		format.js
    	end
    end

    private
    def require_authentication

    end	
end

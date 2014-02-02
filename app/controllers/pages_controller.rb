class PagesController < ApplicationController

  def home
  end

  def authenticated
      redirect_to(:lists) if user_signed_in?
  end
  
end

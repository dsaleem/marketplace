class PagesController < ApplicationController
  def home
  
  	if current_user
  		redirect_to items_path
  	end
 end

 def dashboard
 	@items = current_user.items
 end

end

module ApplicationHelper
=begin	
	def require_login
		unless user_signed_in?
			flash[:error] = "You must be logged in to access this section"
			redirect_to posts_path
	end
=end	
end

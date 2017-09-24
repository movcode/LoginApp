module SessionHelper

	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	def logged_in?
		!current_user.nil?
	end

	def logged_in_user
		if !logged_in? 
			redirect_to :index
		end
	end
end
module ApplicationHelper
	def current_user
		return nil unless session[:user_id]

		return User.find(session[:user_id])
	end

	def set_current_user user
		session[:user_id] = user.id
	end

	def logout_user
		session.delete(:user_id)
	end

	def user_logged_in?
		current_user != nil
	end
end

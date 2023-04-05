module ApplicationHelper

	def sample_helper
		"<p> My sample helper </p>".html_safe
	end

	def login_helper
		if current_user.is_a?(User)
      		link_to 'Logout', destroy_user_session_path, method: :delete, data: {confirm: 'Do you wanna logout'}
    	else
	      	(link_to 'Login', new_user_session_path) + "<br>".html_safe  + (link_to 'Signup', new_user_registration_path)
    	end
	end
end

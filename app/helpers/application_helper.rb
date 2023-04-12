module ApplicationHelper

	def sample_helper
		"<p> My sample helper </p>".html_safe
	end

	def login_helper
		if current_user.is_a?(GuestUser)
      		(link_to 'Login', new_user_session_path) + "<br>".html_safe  + (link_to 'Signup', new_user_registration_path)
    	else
	      	link_to 'Logout', destroy_user_session_path, method: :delete, data: {confirm: 'Do you wanna logout'}
    	end
	end

	def source_helper(layout_name: nil)
		if session[:source]
			greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout"
      		content_tag(:p, greeting, class: "source-greeting")
      	end
	end
end

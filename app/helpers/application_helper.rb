module ApplicationHelper
	def sort_column_gen (column, title = nil)
		title ||= column.titleize
		link_to title, {:sort => @active_column, :direction => @sort_direction}, {:class => "sort-column"}
	end

	def login_items
		if current_user.nil?
			("<div class = 'login_items'>".html_safe) +
				(link_to "Login", new_user_session_path)+
				+ (" / ".html_safe) +
				(link_to "Register", new_user_registration_path) +
			("</div>".html_safe)
		else
			("<div class = 'login_items'>".html_safe) +
				(link_to "Logout", destroy_user_session_path, method: :delete) +
			("</div>".html_safe)
		end
	end
end

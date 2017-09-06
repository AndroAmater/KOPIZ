module ApplicationHelper
	def sort_column_gen (column, title = nil)
		title ||= column.titleize
		link_to title, {:sort => @active_column, :direction => @sort_direction}, {:class => "sort-column"}
	end
end

module ApplicationHelper

	def flash_class(type)
		case type.to_s
		when 'alert'
			"alert-danger"
		when 'notice'
			"alert-success"
		else
			" "
		end
	end

end

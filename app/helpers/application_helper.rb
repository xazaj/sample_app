module ApplicationHelper

	#在每个页面返回一个完整标题
	def full_title(page_title)
		base_title = "Ruby on Rails Sample App"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end

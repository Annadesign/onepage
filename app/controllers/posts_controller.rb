class PostsController < ApplicationController

	def index
		@sections 	= Section.order(:position)
		@projects 	= Project.published
		@services 	= Service.ordered
		@articles 	= Article.published
		@partners	= Partner.published
		@contacts 	= Contact.published
		@faqs		= Faq.all
	end

end
class Portfolio < ApplicationRecord
	include Placeholder
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.angular
		where(title: 'Angular')
	end

	scope :ruby_on_rails_portfolio_items, -> { where(title: 'Ruby on Rails') }

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= Placeholder.image_generator(height: 600, width: 400) #  set if not nil
		self.thumb_image ||= Placeholder.image_generator(height: 350, width: 200)
	end
end

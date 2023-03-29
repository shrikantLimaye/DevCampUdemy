module Placeholder
	extend ActiveSupport::Concern

	def self.image_generator(height:nil, width:nil)
		"https://place-hold.it/#{height}x#{width}"
	end
end

class Blog < ApplicationRecord
	enum status: { draft: 0, published: 1 }
	extend FriendlyId
	friendly_id :title, use: :slugged

	validates_presence_of :title, :body

	def status_change_in_blog
		if self.draft?
	      self.published!
	    else
	      self.draft!
	    end
	end

end

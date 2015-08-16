class Holiday < ActiveRecord::Base
	validates :name, presence: true,
                    length: { minimum: 4 }
	
	def self.search(search)
		if search
			where(["name LIKE ?","%#{search}%"])
		else
			all
		end
	end

end

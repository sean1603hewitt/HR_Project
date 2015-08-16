class Profile < ActiveRecord::Base
	validates :name, presence: true,
		length: { minimum: 4 }
	  
	include HasGravatar

	has_many :holidays				
	

end

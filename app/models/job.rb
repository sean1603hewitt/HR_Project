class Job < ActiveRecord::Base
	belongs_to :category
	
	has_many :resumes
end

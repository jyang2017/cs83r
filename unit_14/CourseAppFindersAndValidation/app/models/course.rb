class Course < ActiveRecord::Base
    
	validates_presence_of :department
	validates_presence_of :number
	validates_presence_of :title
	validates_presence_of :size
	validates_presence_of :hours
	validates_presence_of :teacher
	
	validates_inclusion_of :size, :in => 1..45
	validates_inclusion_of :hours, :in => 1..7
	
	
	def validate
        if (somethingBad)
            errors[ :veryBad ] << "Something is very bad..."
        end
    end
end

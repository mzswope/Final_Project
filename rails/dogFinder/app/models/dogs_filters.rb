class DogsFilters
	attr_accessor :age
   	def initialize(age = nil)
      	if !age.nil? and !age.blank?
      		@age = age;
      	else
      		@age = nil
      	end
   	end
  	def to_s; age.to_s; end
end
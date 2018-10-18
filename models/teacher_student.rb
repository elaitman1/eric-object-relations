class TeacherStudent

	attr_accessor :student, :teacher

	@@all = []

	def initialize(student, teacher)
		@student = student #Student object instance
		@teacher = teacher #Teacher object instance

		@@all << self
	end

	def self.all
		@@all
	end

end

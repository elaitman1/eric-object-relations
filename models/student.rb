class Student

	attr_accessor :name, :major


	@@all = []

	def initialize(name, major)
		@name = name #String
		@major = major #String

		@@all << self
	end

	def self.all
		@@all
	end


	def teacher_students
		TeacherStudent.all.select do |ts|
			ts.student == self
		end
	end

	def teachers
		self.teacher_students.map do |ts|
			ts.teacher
		end
	end

end
class Teacher

	attr_accessor :name, :subject

	@@all = []

	def initialize(name, subject)
		@name = name #String
		@subject = subject #String

		@@all << self
	end

	def self.all
		@@all
	end

	#WHAT DOES THIS ARRAY REPRESENT? ==> All TeacherStudent Objects that BELONG TO this Teacher
	def teacher_students
		TeacherStudent.all.select do |ts|
			ts.teacher == self
		end # WHAT AM I? ==> [ TeacherStudent Object, TeacherStudent Object, ...]
	end

	def students
		# new_array = []
		# teacher_students.each do |ts|
		# 	new_array << ts.student
		# end

		# new_array


		self.teacher_students.map do |ts|
			ts.student
		end

	end


end
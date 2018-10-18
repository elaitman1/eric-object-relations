require_relative "../config/environment.rb"

t1 = Teacher.new("Steven", "Math")
t2 = Teacher.new("Mike", "Biology")
t3 = Teacher.new("Jeff", "Biology")
t4 = Teacher.new("Laura", "Physics")


s1 = Student.new("Eric", "Science")
s2 = Student.new("Matt", "English")
s3 = Student.new("Sam", "English")
s4 = Student.new("Tom", "Criminal Law")


ts1 = TeacherStudent.new(s1, t1)
ts2 = TeacherStudent.new(s1, t2)
ts3 = TeacherStudent.new(s2, t3)
ts4 = TeacherStudent.new(s3, t4)
ts5 = TeacherStudent.new(s4, t4)
ts6 = TeacherStudent.new(s4, t3)
ts7 = TeacherStudent.new(s3, t1)
ts8 = TeacherStudent.new(s1, t2)
ts9 = TeacherStudent.new(s1, t4)


Pry.start


Write methods that:

# Given a subject, returns all teachers who teach that subject
# Given a major, returns all students who study that major
# Returns the Teacher with the most students
# Returns the Student with the most teachers
# Returns the major studied by the most students
# Returns the subject taught by the most teachers
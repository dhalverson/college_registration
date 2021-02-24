CourseStudent.destroy_all
Student.destroy_all
Course.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

student_01 = Student.create!(name: Faker::Name.name, email: Faker::Internet.email)
student_02 = Student.create!(name: Faker::Name.name, email: Faker::Internet.email)
student_03 = Student.create!(name: Faker::Name.name, email: Faker::Internet.email)

course_01 = Course.create!(name: Faker::Educator.course_name, time: '8:00')
course_02 = Course.create!(name: Faker::Educator.course_name, time: '11:00')
course_03 = Course.create!(name: Faker::Educator.course_name, time: '14:00')

course_student_01 = CourseStudent.create!(course: course_01, student: student_01)
course_student_02 = CourseStudent.create!(course: course_02, student: student_02)
course_student_03 = CourseStudent.create!(course: course_03, student: student_03)
course_student_04 = CourseStudent.create!(course: course_03, student: student_01)

print 'Seeding Successful!'
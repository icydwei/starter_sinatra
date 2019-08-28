class Course < ActiveRecord::Base
    has_many :course_students
    has_many :students, through: :course_students
end
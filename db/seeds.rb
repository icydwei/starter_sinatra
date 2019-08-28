# Student.destroy_all
# Course.destroy_all
# CourseStudent.destroy_all

mcz = Student.find_or_create_by(name: "Marisa Caner")
rob = Student.find_or_create_by(name: "Rob Walsit")
pey = Student.find_or_create_by(name: "Peyton Apple")

fit = Course.find_or_create_by(name: "Pushups, etc.")
sel = Course.find_or_create_by(name: "Life Skillz")
ela = Course.find_or_create_by(name: "Reading is Kool")

mcz.courses << sel
mcz.courses << ela
rob.courses << fit
rob.courses << sel
pey.courses << sel
# pey.courses << sel


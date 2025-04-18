require_relative 'grade_manager'

class Test

  manager  = GradeManager.new

  grades = Hash.new

  grades[:math] = 90
  grades[:science] = 85
  grades[:history] = 88
  grades[:english] = 92
  grades[:spanish] = 89
  grades[:german] = 95
  grades[:french] = 91

  manager.add_student('Kristina', grades)
  puts manager.students
  puts manager
  puts manager.inspect

  puts manager.students['Kristina']
  puts manager.students['Kristina'][:math]

  grades_bobby = Hash.new
  grades_bobby[:math] = 19
  grades_bobby[:science] = 23
  grades_bobby[:history] = 43
  grades_bobby[:english] = 32
  grades_bobby[:spanish] = 12
  grades_bobby[:german] = 0
  grades_bobby[:french] = 5

  manager.add_student('Bobby', grades_bobby)

  students = manager.students

  puts students["Bobby"]

  puts students.class

  gradeB = 200
  manager.update_grade("Bobby", :math, gradeB)
  puts students["Bobby"]

  gradeK = 300
  manager.update_grade("Kristina", :math, gradeK)
  puts students["Kristina"]

  puts students["Kristina"][:math].object_id
  puts students["Bobby"][:math].object_id

  puts students["Kristina"][:math].object_id == students["Bobby"][:math].object_id

  puts :math.object_id == :math.object_id
  puts students["Kristina"].keys.include?(:math) && students["Bobby"].keys.include?(:math)
end

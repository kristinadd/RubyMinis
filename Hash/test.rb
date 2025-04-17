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
end

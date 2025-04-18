class GradeManager
  attr_reader :students  # This makes @students readable from outside the class

  def initialize
    @students = {}
  end

  def add_student(name, grades = {})
    @students[name] = grades
  end

  def update_grade(name, subject, grade)
    @students[name][subject] = grade
  end


  def student_average(name)
  end

  def subject_average(subject)
  end

  def highest_grade(subject)
  end

  def students_above_grade(subject, minimum_grade)
  end
end

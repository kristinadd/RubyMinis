class GradeManager
  attr_reader :students  # This makes @students readable from outside the class

  def initialize
    @students = {}  # This will store all student data
  end

  def add_student(name, grades = {})
    @students[name] = grades
  end

  # 2. Add or update a grade for a specific student and subject
  def update_grade(name, subject, grade)
    # Implement this method
  end

  # 3. Get a student's average grade
  def student_average(name)
    # Implement this method
  end

  # 4. Get the class average for a specific subject
  def subject_average(subject)
    # Implement this method
  end

  # 5. Get the highest grade in a specific subject
  def highest_grade(subject)
    # Implement this method
  end

  # 6. Get a list of students who scored above a certain grade in a subject
  def students_above_grade(subject, minimum_grade)
    # Implement this method
  end
end

require_relative 'student'

class Gradebook
  def initialize
    @students = []
  end

  def add_student(student)
    @students.push(student)
  end

  def find_student(student)
    @students.find { |subject| subject.name == student }
  end

  def remove_student(student)
    index = @students.find_index { |subject| subject.name == student }
    @students.delete_at(index) if index
  end

  def student_average(student)
     # (&.) Called 'safe' or 'lonely' operator, used to safely call methods on objects.
    @students.find { |subject| subject.name == student }&.average_grade
  end

  def student_letter_grade(student)
    @students.find { |subject| subject.name == student }&.letter_grade
  end
end

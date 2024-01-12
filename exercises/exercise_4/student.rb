class Student
  attr_reader :name, :grades

  def initialize(name)
    @grades = []
    @name = name
  end

  def add_grade(grade)
    @grades.push(grade.to_i)
  end

  def average_grade
    @grades.sum / @grades.length.to_f
  end

  def letter_grade
    case average_grade
    when (90..100)
      'A'
    when (80..89)
      'B'
    when (70..79)
      'C'
    when (60..69)
      'D'
    else
      'F'
    end
  end
end

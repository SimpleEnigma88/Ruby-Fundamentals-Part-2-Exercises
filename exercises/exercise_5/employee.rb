class Employee
  attr_accessor :name, :position
  private attr_reader :salary

  def initialize(name, position, salary)
    @name = name
    @position = position
    @salary = salary
  end

  def details
    "Name: #{@name}, Position: #{@position}"
  end

  def is_paid_less_than?(employee)
    employee.is_paid_more_than?(@salary)
  end

  def is_paid_more_than?(other_salary)
    @salary > other_salary
  end
end

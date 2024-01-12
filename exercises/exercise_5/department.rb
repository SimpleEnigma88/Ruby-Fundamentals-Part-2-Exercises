require_relative 'employee'

class Department
  attr_accessor :employees

  def initialize
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def remove_employee(name)
    @employees.reject! { |employee| employee.name == name }
  end

  def list_employees
    @employees
  end

  def highest_paid_between(employee1, employee2)
    if employee1.is_paid_less_than?(employee2)
      employee2
    else
      employee1
    end
  end
end

class CEO
  attr_reader :coo

  def initialize(coo)
    @coo = coo
  end
  def make_company_efficient
    coo.reduce_spending
  end
end

class COO
  attr_reader :hr_manager

  def initialize(hr_manager)
    @hr_manager = hr_manager
  end
  def reduce_spending
    hr_manager.reduce_payroll
  end
end

class HrManager
  attr_reader :employees

  def initialize
    @employees = [Employee.new, Employee.new]
  end
  def reduce_payroll
    fire_employees
  end

  private
  def fire_employees
    employees.map{|emp| emp.fire }
  end
end

class Employee
  def fire
    if efficiency < 5
      puts "you're fired"
    else
      puts "safe for now"
    end
  end

  private
  def efficiency
    rand(10)
  end
end

hr_man = HrManager.new
coo = COO.new(hr_man)
ceo = CEO.new(coo)
ceo.make_company_efficient

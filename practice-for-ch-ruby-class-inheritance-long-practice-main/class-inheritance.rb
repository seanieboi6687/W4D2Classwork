class Employee
    attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        return @salary * multiplier
    end
end

class Manager < Employee

    def initialize(name, title, salary, boss = nil)
        super(name, title, salary, boss)
        @employees = []
    end

    def bonus(multiplier)
        self.total_salary * multiplier
    end

    def total_salary
        salary_sum = 0
        @employees.each do |employee|
            salary_sum += employee.salary
        end
    end

    def add_employee(employee)
        @employees << employee
    end
end

darren = Manager.new("darren", "manager", 78000, nil)
david = Employee.new("david", "TA", 12000, darren)

darren.bonus(4) # => 88_000
david.bonus(3) # => 30_000
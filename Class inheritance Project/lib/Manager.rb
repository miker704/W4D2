require_relative "Employee.rb"


class Manager < Employee
    attr_reader :assigned_emps
    def initialize(emp_name,emp_title,salary,boss)
       
        # super(emp_name,emp_title,salary,boss)
        super
        @assigned_emps=[]
    end
    
    def bonus(multiplier)
        employee_sum=0
        @assigned_emps.each do |emp|
            if emp.employee_title.include?("Manager") || emp.employee_title.include?("Founder")
                    employee_sum+= emp.salary + emp.bonus(1)
            else
                employee_sum+=emp.salary
            end
        end
        return employee_sum*multiplier
    end

    

    def add_employee(employee)
       self.assigned_emps << employee if employee.boss == self.employee_name
        
    end


   


end

# require 'byebug'
# debugger
ned= Manager.new("ned","Founder",1000000,nil)
darren= Manager.new("darren","TA Manager",78000,"ned")
shawna = Employee.new("Shawna","TA",12000,"darren")
david = Employee.new("David","TA",10000,"darren")
ned.add_employee(darren)
darren.add_employee(shawna)
darren.add_employee(david)


p ned.bonus(5)
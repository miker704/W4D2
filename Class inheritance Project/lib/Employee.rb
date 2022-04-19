class Employee

    attr_reader :employee_name, :employee_title, :salary, :boss

    def initialize(emp_name,emp_title,salary,boss=nil)
        @employee_name=emp_name
        @employee_title=emp_title
        @salary=salary
        @boss=boss


    end

    def bonus(multiplier)
        # if self.employee_title == "Manager"
        #         p self.assigned_emps
        # end
        return @salary*multiplier
    end

    def assign_emp_manager(boss)
        if !@boss.nil?
            self.boss.assigned_emps
        end
    end

end
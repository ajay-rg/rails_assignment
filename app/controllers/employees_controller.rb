class EmployeesController < ApplicationController  			#Controller class inherit from ApplicationController
	def new													#to create a new object.
	end
	def index
		@employees = Employee.all 							
	end
	def create
		@employee = Employee.new(employee_params)	#@employee holds the object built from the data, the user submitted
		@employee.save								
		#puts "==> #{@employee.inspect}"
		redirect_to employees_path					#directed to the data base at the end
	end
	def show
		@employee=Employee.find(params[:id])			#to find only the employee that has the id defined in params[:id]
	end
	def update
	   @Employee = Employee.find(params[:id])	
	   if @employee.update_attributes(Employee_param)	 #it overwrites the attributes of the existing row
	      redirect_to :action => 'show', :id => @employee 	#goes to that employee's data
	   else
	      redirect_to employees_path					#or goes to data base
	   end	
	end
	private
	def employee_params
		params.require(:employee).permit(:Name,:Project,:Team_lead,:Skill_number)	#defines employee parameter
	end
end

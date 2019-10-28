# controller for check in/out
class ReportController < ApplicationController

  def index
    @employees = Employee.all
    @date = DateTime.now
  end

end

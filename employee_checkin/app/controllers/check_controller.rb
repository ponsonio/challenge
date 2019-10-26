# controller for check in/out
class CheckController < ApplicationController

  def index
    employee_id = params[:employee_id].to_i
    @last_assistance = get_last_assistance(employee_id)
  end

  def in
    @employee_id = params[:employee_id]
    @last_assistance = get_last_assistance(@employee_id)
    if @last_assistance.nil? || !@last_assistance.checkin.nil?
      @last_assistance = Assistance.new
      @last_assistance.employee_id = @employee_id
      @last_assistance.checkin = Time.now
      @last_assistance.save!
    else
      @message = "Tiene un checkin abierto, debe cerrarlo primero"
    end
  end

  def out
    @employee_id = params[:employee_id]
    @last_assistance = get_last_assistance(@employee_id)
    if !@last_assistance.nil? && @last_assistance.checkout.nil?
      @last_assistance.checkout = Time.now
      @last_assistance.save!
    else
      @message = "No tiene un checkin abierto para cerrar"
    end
  end

  def get_last_assistance(employee_id)
    if employee_id != 0
      @employee = Employee.find(employee_id)
    else
      @employee = Employee.find(1)
    end
    @employee.assistances.order(created_at: :asc).last(1).first
  end
end

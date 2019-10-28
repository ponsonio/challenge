require 'test_helper'

class CheckControllerTest < ActionDispatch::IntegrationTest

  @employee

  setup do
    @employee = Employee.new({names:'Jorge', last_name:'Cabrera', email:'correo1@email.com' ,gender:1})
    @employee.save
  end

  test "should get index" do
    get check_index_url + '?employee_id=' + @employee.id.to_s
    assert_response :success
  end


  test "should get in" do
    get check_index_url + '?employee_id=' + @employee.id.to_s
    assert_response :success
  end

  test "should get out" do
    get check_index_url + '?employee_id=' + @employee.id.to_s
    assert_response :success
  end

  test "should check id" do
    get check_index_url + '?employee_id=' + @employee.id.to_s
    assert_response :success
  end

  test "should check in" do
    start = @employee.assistances.count
    get check_in_url + '?employee_id=' + @employee.id.to_s
    assert_response :success
    assert_equal(start + 1, @employee.assistances.count, 'should have only one more assistance')
    last_assistance = @employee.assistances.order(created_at: :asc).last(1).first
    assert_nil(last_assistance.checkout, 'checkout date should be null')
  end

  test "should check out" do
    get check_in_url + '?employee_id=' + @employee.id.to_s
    get check_out_url + '?employee_id=' + @employee.id.to_s
    assert_response :success
    @employee = Employee.find(@employee.id)
    last_assistance = @employee.assistances.order(created_at: :asc).last(1).first
    assert_not_nil(last_assistance.checkout, 'checkout date should be not null')
  end


end

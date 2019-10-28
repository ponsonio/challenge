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

end

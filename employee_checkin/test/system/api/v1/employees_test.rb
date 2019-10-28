require "application_system_test_case"

class Api::V1::EmployeesTest < ApplicationSystemTestCase
  setup do
    @api_v1_employee = api_v1_employees(:one)
  end

  test "visiting the index" do
    visit api_v1_employees_url
    assert_selector "h1", text: "Api/V1/Employees"
  end

  test "creating a Employee" do
    visit api_v1_employees_url
    click_on "New Api/V1/Employee"

    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit api_v1_employees_url
    click_on "Edit", match: :first

    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit api_v1_employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end

require_dependency "admin/application_controller"

module Admin
  class EmployeesController < ApplicationController
    include Godmin::Resources::ResourceController
  end
end

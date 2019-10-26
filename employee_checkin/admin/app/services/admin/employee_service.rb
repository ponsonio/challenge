module Admin
  class EmployeeService
    include Godmin::Resources::ResourceService

    attrs_for_index :names, :last_name, :email, :gender
    attrs_for_show :names, :last_name, :email, :gender
    attrs_for_form :names, :last_name, :email, :gender
  end
end

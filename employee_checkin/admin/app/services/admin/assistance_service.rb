module Admin
  class AssistanceService
    include Godmin::Resources::ResourceService

    attrs_for_index :checkin, :checkout, :employee
    attrs_for_show :checkin, :checkout, :employee
    attrs_for_form :checkin, :checkout, :employee
  end
end

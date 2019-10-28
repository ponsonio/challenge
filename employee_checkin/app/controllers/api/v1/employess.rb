module API
    module V1
      class Employess < Grape::API
        include API::V1::Defaults
  
        resource :employees do
          desc "Return all employees"
          get "", root: :employees do
            Employee.all
          end
  
          desc "Return a employee"
          params do
            requires :id, type: String, desc: "ID of the 
            employee"
          end
          get ":id", root: "employee" do
            Employee.where(id: permitted_params[:id]).first!
          end
        end
      end
    end
  end
class EmployeeSerializer < ActiveModel::Serializer
    attributes :id, :names, :last_name, :email, :gender, 
        :created_at, :updated_at
end
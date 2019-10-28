class AssistanceSerializer < ActiveModel::Serializer
  attributes :id, :employee_id, :checkin, :checkout
end

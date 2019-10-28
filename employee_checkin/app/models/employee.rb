class Employee < ApplicationRecord

    has_many :assistances
    scope :name_like, -> (name) { where("names like ?", "%#{name}%")}

    def to_s
        id.to_s + " - " + names + " " + last_name
    end

end

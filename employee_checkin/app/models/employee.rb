class Employee < ApplicationRecord

    has_many :assistances

    def to_s
        id.to_s + " - " + names + " " + last_name
    end

end

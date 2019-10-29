class Employee < ApplicationRecord

    validates :names, :last_name, :email, :gender, presence: true

    has_many :assistances
    scope :name_like, -> (name) { where("lower(names) like ?", "%#{name.downcase}%") }

    def to_s
        id.to_s + " - " + names + " " + last_name
    end
end

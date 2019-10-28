class Assistance < ApplicationRecord
  
    belongs_to :employee
    
    def hours
        checkout.nil? ? 0.0 : (checkout - checkin)/3600 
    end

end

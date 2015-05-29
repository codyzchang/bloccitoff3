class Item < ActiveRecord::Base
  belongs_to :user
  
   def days_left
      (created_at.to_date - DateTime.now.to_date + 7).to_i
   end
  
  
  
end

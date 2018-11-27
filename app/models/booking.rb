class Booking < ApplicationRecord
	  belongs_to :user
	    
	    belongs_to :movie 

	    belongs_to :show_time

end

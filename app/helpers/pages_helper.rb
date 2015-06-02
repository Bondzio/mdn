module PagesHelper

	def time_to_display
      launch_day = Time.local(2015, 6, 3, 12, 0)
      if Time.now < launch_day
      	return false
      else
      	return true
      end  	
	end

end

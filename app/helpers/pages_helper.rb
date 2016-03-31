module PagesHelper

	def time_to_display
      launch_day = Time.local(2016, 4, 12, 12, 0)
      if Time.now < launch_day
      	return false
      else
      	return true
      end  	
	end

end

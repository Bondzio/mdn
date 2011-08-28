class PrayerCell < Cell::Rails
#SMC - This is the "Prayer stream controller used to insert a cell into the Home#Index page

  def prayerstream
   @prayers = Prayer.where(:moderated => true)
   
   #prayers.each do |prayer|
    # @prayer = prayer
   
  
  #end
   
  render

  end

end

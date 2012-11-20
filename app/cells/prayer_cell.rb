class PrayerCell < Cell::Rails
#SMC - This is the "Prayer stream controller used to insert a cell into the Home#Index page

  def prayerstream
   #@prayers = Prayer.where(:moderated => true)
   #modified the record return so that the array is sorted randomly
   #this ensures that when the home page is refreshed, the order the prayers are displayed in changes
    @prayers = Prayer.where(:moderated => true).sort_by{rand}
   
  render

  end

end

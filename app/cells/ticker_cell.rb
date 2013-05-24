class TickerCell < Cell::Rails

  #SMC - This is the "Prayer stream controller used to insert a cell into the Home#Index page

    def display(stream)
     #modified the record return so that the array is sorted randomly
     #this ensures that when the home page is refreshed, the order the prayers are displayed in changes
      @streams = Stream.all.sort_by{rand}
      
    render

    end
  
end

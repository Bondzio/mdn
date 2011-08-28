class QuoteCell < Cell::Rails

  def display
    quotes = Quote.where(:enabled => true)
    
    quotes.each do |quote|
    @quote = quote
    end
    
    render

  end

end

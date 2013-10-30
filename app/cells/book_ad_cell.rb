class BookAdCell < Cell::Rails

  def display(book)
   @books = Book.where(:featured => true)
  
   render
  
  end

end

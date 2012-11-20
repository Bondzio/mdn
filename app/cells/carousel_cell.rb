class CarouselCell < Cell::Rails

  def display(movie)
   @movies = Movie.where(:carousel => true)
   
#   movies.each do |movie|
#     @movie = movie.url
#   end
   
  
  #end
   
  render

  end

end

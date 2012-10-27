class VideoFeatureCell < Cell::Rails

  def display(movies)
   movies = Movie.where(:featured => true)
   
   movies.each do |movie|
     @movie = movie.url
   end
   
  
  #end
   
  render

  end
end

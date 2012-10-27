class ArticlePlacementCell < Cell::Rails

  
#This method will post an article to the home page in the locate with space_id with value "1" and that has been moderated.
  
#SMC - Need to always use .all on this query or it doesn't recognize the method

  def article1(article)
    article = Article.where(:space_id => '1', :moderated => true)
    
    article.each do |article|
    @article1 = article.content
    end
    
    render

   end

   def article2(article)
     article = Article.where(:space_id => '2', :moderated => true)

     article.each do |article|
     @article2 = article.content
     end

     render

    end
    
  def article3(article)
      article = Article.where(:space_id => '3', :moderated => true)

      article.each do |article|
      @article3 = article.content
      end

      render

     end
end

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  
  test "should not save article without title" do
   @article = Article.new
   assert_not @article.save, "Saved the article without a title"
  end
  
  test "should not save article with title < 5" do
   @article = Article.new
   @article.title = 'titl'
   assert_not @article.save, "Saved the article with title < 5"
  end
  
  test "should work" do
   @article = articles(:one)
   assert @article.save, "Saved the article using the data in fixtures"
  end

  end

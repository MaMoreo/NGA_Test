require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end
  
  test "should create article" do
  assert_difference('Article.count') do
   article :create, article: {title: 'Some title'}
  end
 
  #assert_redirected_to post_path(assigns(:article))
end
  
  test "should get show" do
    get(:show, {'id' => "12"}, nil)
    assert_response :missing  
     #assert_not_nil assigns(:articles)
  end

end

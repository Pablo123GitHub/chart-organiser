require 'test_helper'



class CategoryTest < ActiveSupport::TestCase
  def setup
    @category = categories(:one)
  end 
  
  test "#charts" do
    assert_equal 1, @category.charts.size
  end

  test "#recent" do 
    assert_includes Category.recent, categories(:recent)
    refute_includes Category.recent, categories(:old)
  end 


end

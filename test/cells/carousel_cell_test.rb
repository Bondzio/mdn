require 'test_helper'

class CarouselCellTest < Cell::TestCase
  test "display" do
    invoke :display
    assert_select "p"
  end
  

end

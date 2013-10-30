require 'test_helper'

class BookAdCellTest < Cell::TestCase
  test "display" do
    invoke :display
    assert_select "p"
  end
  

end

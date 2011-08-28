require 'test_helper'

class VideoFeatureCellTest < Cell::TestCase
  test "display" do
    invoke :display
    assert_select "p"
  end
  

end

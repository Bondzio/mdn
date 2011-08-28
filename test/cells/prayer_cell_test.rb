require 'test_helper'

class PrayerCellTest < Cell::TestCase
  test "display" do
    invoke :display
    assert_select "p"
  end
  

end

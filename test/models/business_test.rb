require 'test_helper'

class BusinessTest < ActiveSupport::TestCase

  test "Create Empty Business" do
    bus = Business.new
    assert bus.save
  end

  test 'Create non-Empty Business' do
    bus = Business.new
    bus[:domain] = 'google.com'
    bus[:summary] = 'the summ'
    assert bus.save
  end


end

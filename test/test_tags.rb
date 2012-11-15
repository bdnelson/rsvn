require 'test/unit'
require 'rsvn'

class RsvnTest < Test::Unit::TestCase
  def test_got_tags
    @tags = Rsvn.tags("http://svn.apache.org/repos/asf/subversion")
    assert !@tags.empty?
  end
end

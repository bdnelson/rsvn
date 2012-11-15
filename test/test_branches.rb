require 'test/unit'
require 'rsvn'

class RsvnTest < Test::Unit::TestCase

  def test_got_branches
    @branches = Rsvn.branches("http://svn.apache.org/repos/asf/subversion")
    assert !@branches.empty?
  end
end

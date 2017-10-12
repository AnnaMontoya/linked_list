require "minitest/autorun"
require "minitest/pride"
require "./lib/node"

class NodeTest < Minitest::Test

  def test_it_has_a_surname_and_a_next_node_of_nil
    node = Node.new("Burke")

    assert_equal "Burke", node.surname
    assert_nil node.next_node
  end

end

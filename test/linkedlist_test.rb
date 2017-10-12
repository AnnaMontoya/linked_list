require "minitest/autorun"
require "minitest/pride"
require "./lib/linkedlist"

class LinkedListTest < Minitest::Test
  def test_it_starts_with_no_head
    list = LinkedList.new

    assert_nil list.head
  end

  def test_the_head_is_appendable
     list = LinkedList.new
     list.append("West")

     assert_instance_of Node, list.head
     assert_equal "West", list.head.surname
  end

  def test_count_method_returns_number_nodes
    list = LinkedList.new
    list.append("West")
    assert_equal 1, list.count
  end

  def test_list_returns_surname_string
    list = LinkedList.new
    list.append("West")

    assert_equal "The West family", list.to_string
  end


  def test_count_method
    list = LinkedList.new

    assert_equal 0, list.count

    list.append("Rhodes")
    assert_equal 1, list.count

    list.append("Hardy")
    assert_equal 2, list.count
  end

  def test_list_returns_Rhodes_Hardy_string

    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")


    assert_equal "The Rhodes family, followed by the Hardy family.", list.to_string
  end
end

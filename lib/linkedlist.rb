require_relative "node"
require "pry"

class LinkedList
  attr_reader :head,
              :count
  def initialize
    @head = nil
    @count = 0
  end

  def append(surname)
    if @head.nil?
      @head = Node.new(surname)
    else
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(surname)
    end
  end

    def count
      @head.nil?
      count = 0
      current_node = @head
      until current_node.nil?
        current_node = current_node.next_node
        count += 1
      end
      count
  end

  def to_string
    surname_string = "The #{@head.surname} family"
    count = 1
    if count += 2
    #if @head.next_node == nil
      surname_string.concat(", followed by the #{@head.next_node.surname} family.")

    end
  end
end

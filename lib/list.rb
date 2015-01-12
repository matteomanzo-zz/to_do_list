class List

  attr_reader :container

  def initialize
    @container = []
  end

  def add_item(item)
    container << item
  end

  def show_items
    container.each{|item| p item}
  end
end
class TodoList

  def initialize(items)
    @items = items
  end

  def get_items
    @items
  end

  def add_item(add_items)
    @items.push(add_items)
  end

  def delete_item(delete_items)
    @items.delete(delete_items)
  end

  def get_item(items)
    @items[items]
  end

end
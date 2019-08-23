# contains all actions for History elements
class BaseHistoryScreen
  def page_title_text
    title_element.text
  end

  def screen_name_text
    screen_name_element.text
  end

  def base_type_text
    spliting_item_name.first[0...spliting_item_name.first.size - 2]
  end

  def conversion_type_text
    spliting_item_name.last[2...spliting_item_name.last.size]
  end

  def spliting_item_name
    item_name.text.partition('☞')
  end

  def click_item
    item_bar.click
  end

  def base_value_text
    base_value_element.text
  end

  def conversion_value_text
    conversion_value_element.text
  end
end

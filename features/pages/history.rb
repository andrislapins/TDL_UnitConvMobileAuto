require './features/modules/base_history'
# contains histiry screen elments to check
class HistoryScreen < BaseHistoryScreen
  def initialize(driver)
    @driver = driver
  end

  def title_element
    @driver.find_elements(class: 'android.widget.TextView')[0]
  end

  def screen_name_element
    @driver.find_elements(id: 'history_item_hint').first
  end

  def item_name
    @driver.find_elements(id: 'history_item_name').first
  end

  def item_bar
    @driver.find_elements(id: 'history_single_line').first
  end

  def base_value_element
    @driver.find_elements(id: 'source_value').first
  end

  def conversion_value_element
    @driver.find_elements(id: 'target_value').first
  end
end

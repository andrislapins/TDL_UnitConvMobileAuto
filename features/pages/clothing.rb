require './features/modules/base_clothing'
# contains number screen elments to check
class ClothingScreen < BaseClothingScreen
  def initialize(driver)
    @driver = driver
  end

  def type_element(type)
    elem = @driver.find_elements(id: 'select_unit_spinner')
    case type
    when 'base'
      elem[0]
    when 'conversion'
      elem[1]
    when 'category'
      elem[2]
    else
      raise 'Unsupported type'
    end
  end

  def type_popup_elements
    @driver.find_elements(id: 'select_unit_spinner_menu_name')
  end

  def base_section_element
    @driver.find_elements(id: 'all_results_single_source_value').first
  end

  def conversion_section_element
    @driver.find_elements(id: 'all_results_single_target_value').first
  end
end

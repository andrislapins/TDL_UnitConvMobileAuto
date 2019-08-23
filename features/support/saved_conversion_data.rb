# Initializes conversion data pair object classes
class SavedConversionData
  attr_reader :screen_name, :base_type, :conversion_type, :base_value, :conversion_value
  def initialize(screen_name, base_type, conversion_type, base_value, conversion_value)
    @screen_name = screen_name
    @base_type = base_type
    @conversion_type = conversion_type
    @base_value = base_value
    @conversion_value = conversion_value
  end
end

require_relative 'farm'

class Field

  attr_accessor :type, :hectares

  def initialize(type, hectares)
    @type = type
    @hectares = hectares
  end



end


# field -> adds a new field
# harvest -> harvests crops and adds to total harvested
# status -> displays some information about the farm
# relax -> provides lovely descriptions of your fields
# exit -> exits the program

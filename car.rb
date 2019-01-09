
class Vehicle
  attr_accessor :wheels, :honk_horn, :light, :make, :model
  # attr_reader :signal

  def initialize make, model, wheels = 4, modelyear = 2019
    @wheels = wheels
    @honk_horn = "BEEP"
    @modelyear = modelyear
    @light = "off"
    @signal = "off"
    @speed = 0
    @make = make
    @model = model
  end
  def speed
    @speed
  end

  def modelyear
    @modelyear
  end

  def signal
    @signal
  end
  def info
    "make: #{@make}, model: #{@model}, year: #{@modelyear.to_s}"
  end

  def lightswitch
    @light = @light == "on" ? "off" : "on"
  end
  def turn(arg)
    @signal = arg
  end
  def accelerate
    @speed += 10
  end
  def brake
    @speed -= 7
  end

end

class Car < Vehicle

end

class Toyota < Car

  def honk_horn
    @honk_horn = "whoop"
  end

  def accelerate
    @speed += 7
  end
  def brake
    @speed -= 5
  end
end

class Tata < Car

  def honk_horn
    @honk_horn = "beep"
  end
  def accelerate
    @speed += 2
  end

  def brake
    @speed -= 1.25
  end
end

class Tesla < Car

 def honk_horn
   @honk_horn = "Beep-bee-bee-boop-bee-doo-weep"
 end

end

class Garage
  def initialize (owner, type)
    @owner = owner
    @type = type
    @collection = []
  end
  def store(newcar)
    @collection << newcar
  end

  def retrieve
    @collection
  end
  def sort_year
    @collection.sort{|a, b| a.modelyear <=> b.modelyear}
  end
  def sort_model_year
    @collection.sort{|a, b| [a.model, a.modelyear] <=> [b.model, b.modelyear]}
  end
end

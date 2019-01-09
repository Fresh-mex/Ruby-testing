require "rspec"
require_relative "car"

describe Vehicle do
  new_vehicle = Vehicle.new("no brand", "no model", 4, 2015)
  it "it has to be real" do
    expect{new_vehicle}.to_not raise_error
  end
  it "how many wheels a car has" do
    expect(new_vehicle.wheels).to be_a Integer
  end
  it "get BEEP" do
    expect(new_vehicle.honk_horn).to eq "BEEP"
  end
  my_toyota = Toyota.new("Toyota", "Camry", 4, 2013)
  it "it can create Toyata car" do
    expect{my_toyota}.to_not raise_error
  end
  it "make sound whoop" do
    expect(my_toyota.honk_horn).to eq "whoop"
  end
  my_tata = Tata.new("Tata", "Flame", 4, 2016)
  it "it has to be real" do
    expect{my_tata}.to_not raise_error
  end
  it "to beep" do
    expect(my_tata.honk_horn).to eq "beep"
  end
  my_tesla = Tesla.new("Tesla", "Model S", 4, 2019)
  it "has to real" do
    expect{my_tesla}.to_not raise_error
  end
  it "to Beep-bee-bee-boop-bee-doo-weep" do
    expect(my_tesla.honk_horn).to eq "Beep-bee-bee-boop-bee-doo-weep"
  end
  it "can tell model year" do
    expect(new_vehicle.modelyear).to be_a Integer
  end
  it "can on and off the lights" do
    expect(new_vehicle.light).to eq "off"
    expect(new_vehicle.lightswitch).to eq "on"
    expect(new_vehicle.light).to eq "on"
    new_vehicle.lightswitch
    expect(new_vehicle.light).to eq "off"
    expect(new_vehicle.lightswitch).to eq "on"
  end
  it "can signal left and right" do
    expect(new_vehicle.signal).to eq "off"
    expect(new_vehicle.turn("right")).to eq "right"
    new_vehicle.turn("left")
    expect(new_vehicle.signal).to eq "left"
    new_vehicle.turn("off")
    expect(new_vehicle.signal).to eq "off"

  end
  it "determines speed" do
    expect(new_vehicle.speed).to be_a Integer
    expect(new_vehicle.speed).to eq 0
    expect(my_tesla.speed).to eq 0
    my_tesla.accelerate
    expect(my_tesla.speed).to eq 10
    expect(my_tesla.brake).to eq 3

    expect(my_tata.speed).to eq 0
    my_tata.accelerate
    expect(my_tata.speed).to eq 2
    expect(my_tata.brake).to eq 0.75

    expect(my_toyota.speed).to eq 0
    my_toyota.accelerate
    expect(my_toyota.speed).to eq 7
    expect(my_toyota.brake).to eq 2
  end
  it "car info" do
    expect(my_tesla.info).to eq "make: Tesla, model: Model S, year: 2019"
  end

  my_garage = Garage.new("Ryan", "daily")
  my_tesla2 = Tesla.new("Tesla", "Model S", 4, 2011)
  my_toyota2 = Toyota.new("Toyota", "Camry", 4, 2001)
  my_tata2 = Tata.new("Tata", "AA", 2, 1999)
  my_garage.store(my_tesla)
  my_garage.store(my_tesla2)

  # it "make garage" do
  #   expect{my_garage}.to_not raise_error
  #   expect(my_garage.store(my_tesla)).to match_array [my_tesla, my_tesla2]
  #   expect(my_garage.retrieve).to match_array [my_tesla, my_tesla2]
  # end
  my_garage.store(my_toyota)
  my_garage.store(my_toyota2)
  my_garage.store(my_tata)
  my_garage.store(my_tata2)


  it "sort" do
    expect(my_garage.retrieve).to match_array [my_tesla, my_tesla2, my_toyota, my_toyota2, my_tata, my_tata2]
    expect(my_garage.sort_year).to eq [my_tata2, my_toyota2, my_tesla2, my_toyota, my_tata, my_tesla]
    expect(my_garage.sort_model_year).to eq [my_tata2, my_toyota2, my_toyota, my_tata, my_tesla2, my_tesla]
  end

end

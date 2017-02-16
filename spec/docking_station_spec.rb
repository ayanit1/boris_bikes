require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
    # expect(subject).to respond_to :release_bike
  # end

  # it 'gets a bike' do
  #   subject.dock(Bike.new)
  #   expect(subject.release_bike).to be_a Bike
  # end

  # it 'checks if bike is working' do
  #   expect(dockingstation.release_bike.working?).to eq true
  # end

  it 'releases a bike' do
    subject.dock(Bike.new)
    expect(subject.release_bike).to be_a Bike
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  it 'Checks if a bike is returned' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  it 'wont release a bike if there are none avaliable' do
    expect{ subject.release_bike }.to raise_error("No bikes are avaliable")
  end

  # it 'wont dock the bike if the dock is full' do
  #   bike = Bike.new
  #   expect{dockingstation.dock(bike)}.to raise_error("The dock is full")
  # end

  it 'intializes with capacity of 20 bikes' do
    expect(subject.capacity).to eq 20
  end

end

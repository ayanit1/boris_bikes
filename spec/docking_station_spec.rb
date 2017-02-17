require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
    # expect(subject).to respond_to :release_bike
  # end

  it 'gets a bike' do
    subject.dock(Bike.new)
    expect(subject.release_bike).to be_a Bike
  end

  it 'checks if bike is working' do
    bike = Bike.new
    expect(bike).to be_working
  end

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

  it 'wont dock the bike if the dock is full' do
    expect{21.times{subject.dock(Bike.new)}}.to raise_error("The dock is full")
  end

  it 'intializes with capacity of 20 bikes' do
    expect(subject.capacity).to eq 20
  end

  it 'allows user to set capacity' do
    station = DockingStation.new(5)
    expect(station.capacity).to eq 5
  end
end

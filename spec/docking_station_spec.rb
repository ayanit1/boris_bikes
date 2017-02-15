require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'return a new instance of bike class' do
    expect(subject.release_bike).to be_a Bike
  end

  it 'expects bike to be working' do
    expect(subject.release_bike.working?).to be true
  end

  it 'docks a bike' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'contain a bike' do
    expect(subject).to respond_to(:bike)
  end

  it 'returns docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it 'raises error if more than one bike is taken before docked' do
    subject.release_bike
    expect{subject.release_bike}.to raise_error "error"
  end

end

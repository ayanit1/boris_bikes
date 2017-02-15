require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'return a new instance of bike class' do
    expect(subject.release_bike).to be_a Bike
  end

  it 'expects bike to be working' do
    expect(subject.release_bike.working?).to be true
  end
end

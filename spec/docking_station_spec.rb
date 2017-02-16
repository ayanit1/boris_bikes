require 'docking_station'

describe DockingStation do
 let(:dockingstation) {described_class.new}
 it {is_expected.to respond_to(:release_bike)}

 it 'checks if bike is working' do
   expect(dockingstation.release_bike.working?).to eq true
 end

 it 'releases a bike' do
   expect(dockingstation.release_bike).to be_a Bike
 end

 it {is_expected.to respond_to(:dock).with(1).argument}

 it 'Checks if a bike is returned' do
   # outside_bike = Bike.new
   bike = dockingstation.release_bike
   expect(dockingstation.dock(bike)).to eq bike
 end

 it 'wont release a bike if there are none avaliable' do
   #I expect it to raise an error if there are no bikes avaliable
   dockingstation.release_bike
   expect{dockingstation.release_bike}.to raise_error("No bikes are avaliable")
 end

 it 'wont dock the bike if the dock is full' do
   bike = Bike.new
   expect{dockingstation.dock(bike)}.to raise_error("The dock is full")
 end
end

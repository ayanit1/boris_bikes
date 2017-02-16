require './lib/docking_station'

station = DockingStation.new

bike = station.release_bike

bike.working?

station.release_bike

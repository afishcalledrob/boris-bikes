require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it 'gets bike and expects to be working' do
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end

  it { is_expected.to respond_to(:return_bike).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'docks something' do
    bike = Bike.new
    expect(subject.return_bike(bike)).to eq bike
    expect(subject.bike).to eq bike
  end
end

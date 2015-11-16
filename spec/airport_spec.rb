require './lib/airport.rb'

describe Airport do
  subject(:airport) {described_class.new}
  let (:plane) {double(:plane)}

  describe 'basic air traffic control' do
    before(:each) { allow(airport).to receive(:stormy?).and_return(false) }

    it "allows plane to land in it" do
      airport.land_plane(plane)
      expect(airport.planes).to include(plane)
    end

    it "releases a plane for take off" do
      airport.land_plane(plane)
      airport.release(plane)
      expect(airport.planes).not_to include(plane)
    end

    it "will not accept anymore planes if full" do
      airport.land_plane(plane)
      expect { airport.land_plane(plane) }.to raise_error "can't land plane"
    end
  end

  describe 'weather air traffic control' do
    context 'stormy weather' do
      before (:each) { allow(airport).to receive(:stormy?).and_return(true) }

      it "will not allow plane to take off " do
        expect { airport.release(plane) }.to raise_error "can't take off in storm"
      end

      it "will not allow plane to land" do
        expect { airport.land_plane(plane) }.to raise_error "can't land plane"
      end
    end
  end

end

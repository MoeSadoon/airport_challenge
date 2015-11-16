require './lib/plane'

describe Plane do
	subject(:plane) {described_class.new}

	it "is expected to be flying upon creation" do
		expect(plane.flying).to eq true
	end

	it "can land at an airport" do
		expect(plane).to respond_to(:land)
	end

	it "should not be flying after landing" do
		plane.land
		expect(plane.flying).to eq false
	end















end

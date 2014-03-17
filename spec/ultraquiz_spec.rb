require 'ultraquiz'

describe 'Ultraquiz', '#popular' do
	it "returns list includes 100 gems" do
		ultraquiz = Ultraquiz::Ultraquiz.new
		ultraquiz.popular.size.should eq(100)
	end
end

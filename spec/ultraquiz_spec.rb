require 'ultraquiz'

describe 'Ultraquiz', '#popular' do
	it "returns list includes 100 gems" do
		ultraquiz = Ultraquiz::Ultraquiz.new
		ultraquiz.popular.size.should eq(30)
	end
end

describe 'Ultraquiz', '#putsAsCsv' do
	it "returns single line of csv for data" do
		ultraquiz = Ultraquiz::Ultraquiz.new
		ultraquiz.putsAsCsv([{
			:name => 'thor',
			:downloads => 100000,
			:version => '0.18.1',
			:'version-downloads' => 3000,
			:author => 'Katz'
		}]).should eq('thor,100000,0.18.1,3000,Katz' + "\n")
	end
end

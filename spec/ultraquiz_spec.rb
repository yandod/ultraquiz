require 'ultraquiz'

describe 'Ultraquiz', '#popular' do
	it "returns list includes 100 gems" do
		ultraquiz = Ultraquiz::Ultraquiz.new
		ultraquiz.popular.size.should eq(30)
		ultraquiz.popular[0]["name"].should eq('thor')
	end
end

describe 'Ultraquiz', '#putsAsCsv' do
	it "returns single line of csv for data" do
		ultraquiz = Ultraquiz::Ultraquiz.new
		ultraquiz.putsAsCsv([{
			"name" => 'thor',
			"downloads" => 100000,
			"version" => '0.18.1',
			"version_downloads" => 3000,
			"authors" => 'Katz'
		}]).should eq('thor,100000,0.18.1,3000,Katz' + "\n")
	end

	it "returns multi line of csv for data" do
		ultraquiz = Ultraquiz::Ultraquiz.new
		ultraquiz.putsAsCsv([{
			"name" => 'thor',
			"downloads" => 100000,
			"version" => '0.18.1',
			"version_downloads" => 3000,
			"authors" => 'Katz'
		},{
			"name" => 'rake',
			"downloads" => 90000,
			"version" => '10.1.1',
			"version_downloads" => 4000,
			"authors" => 'Jim'
		}]).should eq('thor,100000,0.18.1,3000,Katz' + "\n" + 'rake,90000,10.1.1,4000,Jim' + "\n")
	end
end

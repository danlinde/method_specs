describe Hash do
	
	it 'should return a list of keys' do
		hash = {:france => :paris, :spain => :madrid}
		expect(hash.keys).to eq ([:france, :spain])
	end

	it 'should reject some values' do
		hash = {:london => 8, :paris => 2.2, :berlin => 3.5}
			expect(hash.reject {|capital, population| population < 5}).to eq({:london => 8})
	end

	it 'should return a default value' do
		hash = Hash.new("Go Fish")
		expect(hash["a"]).to eq "Go Fish"
	end

	it 'should show two hashes are equal' do
		hash1 = {"a" => 100, "c" => 200}
		hash2 = {"c" => 200, "a" => 100}
		expect(hash1 == hash2).to be_true
	end

	it 'should return two element array for given key' do
		hash = {"home" => "London", "Away" => "Crystal Palace"}
		expect(hash["Away"]).to eq "Crystal Palace"
	end

	it 'should remove all key/value pairs from hash' do
		hash = {"home" => "London", "Away" => "Crystal Palace"}
		expect(hash.clear).to be_empty
	end

	
end
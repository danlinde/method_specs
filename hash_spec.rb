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
		expect(hash.assoc("Away")).to eq ["Away", "Crystal Palace"]
	end

	it 'should remove all key/value pairs from hash' do
		hash = {"home" => "London", "Away" => "Crystal Palace"}
		expect(hash.clear).to be_empty
	end

	it 'should return value from hash for given key' do
		hash = {"home" => "London", "Away" => "Crystal Palace"}
		expect(hash.fetch("Away")).to eq "Crystal Palace"
	end

	it "should convert hash to array - (depth)" do
		hash = { "feline" => ["Tom", "Felix"], "equine" => "Seabiscuit"}
		expect(hash.flatten).to eq ["feline", ["Tom", "Felix"], "equine", "Seabiscuit"]
		expect(hash.flatten(2)).to eq ["feline", "Tom", "Felix", "equine", "Seabiscuit"]
	end

	it 'should merge two hashes, overwriting old info and storing info in new hash' do
		hash1 = {"a" => 100, "b" => 200, "c" => 300}
		hash2 = {"a" => 100, "b" => 250, "c" => 500, "d" => 1000}	
		expect(hash1.merge(hash2)).to eq({"a" => 100, "b" => 250, "c" => 500, "d" => 1000})
	end

	it 'should remove the first key/value pair from hash and return as array' do
		hash = {"a" => 100, "b" => 200, "c" => 300}
		expect(hash.shift).to eq ["a", 100]
	end
	
end
# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in hash_exercises.rb
require_relative 'hash_exercises'

bart = {'name'=>'Bart', 'surname'=>'Simpson', 'age'=> 10, 'catchphrase' => 'Eat my shorts'}
homer = {'name'=>'Homer', 'surname'=>'Simpson', 'children' => 3, 'age'=> 38, 'catchphrase' => 'D\'oh'}


# do the test
describe 'summary' do
	it "works for Bart" do
		assert_equal "Bart Simpson is 10 years old. He frequently says \"Eat my shorts\".",
						summary(bart)
	end
	it "works for Homer" do
		assert_equal "Homer Simpson is 38 years old. He frequently says \"D'oh\".",
						summary(homer)
	end
end

bart_props = <<EOF
name: Bart
surname: Simpson
age: 10
catchphrase: Eat my shorts
EOF
homer_props = <<EOF
name: Homer
surname: Simpson
children: 3
age: 38
catchphrase: D'oh
EOF

describe 'properties' do
	it "works for Bart" do
		assert_output(bart_props) { properties(bart) }
	end
	it "works for Homer" do
		assert_output(homer_props) { properties(homer) }
	end
end

describe 'only_strings' do
	it "works for Bart" do
		assert_equal({'name'=>'Bart', 'surname'=>'Simpson', 'catchphrase' => 'Eat my shorts'}, only_strings(bart))
	end
end



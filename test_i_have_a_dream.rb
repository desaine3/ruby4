# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in i_have_a_dream.rb
require_relative 'i_have_a_dream'


# do the test
describe 'frequencies' do
	it "counts elements in an array" do
		assert_equal({'a'=>1, 'b'=>2}, frequencies(['a b a'])
	end
end

describe 'dream_frequency' do
	it "works for 50 " do
		output = <<EOF
to: 50
the: 103
of: 99
and: 54
EOF
		assert_output(output) { dream_frequency(50)}
	end
end
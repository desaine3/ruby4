# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in i_have_a_dream.rb
require 'i_have_a_dream'


# do the test
describe 'frequencies' do
    it "counts elements in an array" do
        assert_equal({'a'=>1, 'b'=>2}, frequencies('a b a'))
    end
end

describe 'remove_stopwords' do
    it "removes stopwords from the hash" do

        assert_equal({"cat" => 1, "dog" => 1},remove_stopwords({"a"=>2, "cat"=> 1, "and"=>1, "dog"=>1}))
    end

end
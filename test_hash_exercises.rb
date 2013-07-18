# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# load in hash_exercises.rb
require_relative 'hash_exercises'

describe 'add_a_banana' do 
    it "adds a banana" do
        assert_equal({'a'=>2, 'fruit'=>'banana'}, add_a_banana({'a'=>2}))
        assert_equal({'fruit'=>'banana'}, add_a_banana({}))
    end
end

describe 'no_oranges' do
    it 'removes oranges' do
        assert_equal( {'pear'=>'ripe'}, no_oranges({'pear'=>'ripe', 'orange'=>'unripe'}))
    end
    it 'leaves other stuff alone' do
        assert_equal( {'pear'=>'bad', 'apple'=>'sour'}, no_oranges({'pear'=>'bad', 'apple'=>'sour'}))
    end
end

describe 'duck_or_moose' do
    it 'returns duck if present' do
        assert_equal 'bob', duck_or_moose({'duck'=>'bob', 'mouse'=>'alan'})
    end
    it 'returns moose if there is no duck' do
        assert_equal 'moose', duck_or_moose({})
    end
end

describe 'wheres_wally' do
    it "finds him if he's there" do
        assert_equal 'here!', wheres_wally({'e'=>'wally'})
    end
    it "doesn't find him if he isn't there" do
        assert_equal 'not here', wheres_wally({})
    end
end

describe 'pretty_print' do
    it "prints out hash" do
        output=<<EOF
Key dog has value fido.
Key rabbit has value snuffles.
There are no more keys.
EOF
        assert_output(output) do
            assert_equal nil, pretty_print({'dog'=>'fido', 'rabbit'=>'snuffles'})
        end
    end
end

describe 'order_price' do
    it "calculates totals" do
        assert_equal 5.5, order_price({'jaegerbomb'=>1})
        assert_equal 16, order_price({'jaegerbomb'=>2, 'becks'=>2})
    end
end

describe 'count_words' do
    it 'counts the words' do
        assert_equal({'hi'=>1, 'tom'=>4, 'bye'=>2},
            count_words('tom hi tom tom bye tom bye'))
    end
end

describe 'tell_story' do
    it 'tells the default story' do
        assert_equal "It was a dark and stormy night ...",
            tell_story({})
    end
    it 'tells a custom story' do
        assert_equal "It was a cold and foggy morning ...",
            tell_story({'adj1'=> 'cold', 'adj2'=>'foggy', 'time_of_day'=>'morning'})
    end
    it 'tells a semi-custom story' do
        assert_equal "It was a dark and hot night ...",
            tell_story({'adj2'=>'hot'})
    end


end





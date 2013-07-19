# add_a_banana adds the pair
# 'fruit' => 'banana' to the hash e.g
#
#   add_a_banana({'a'=>1}) #=> {'a'=> 1, 'fruit'=> 'banana'}
#
def add_a_banana(input_hash)
    input_hash['fruit'] = 'banana'
    input_hash
end

# no_oranges removes the key 'orange' (and its
# value) from the hash if it is there, returning
# the modified hash
#
#  no_oranges({'pear'=>'ripe', 'orange'=>'unripe'}) #=> {'pear'=>'ripe'}
#
#  no_oranges({'pear'=>'ripe', 'apple'=>'sour'}) #=> {'pear'=>'ripe', 'apple'=>'sour'}
#
def no_oranges(input_hash)
    if input_hash.has_key?('orange')
        input_hash.delete('orange')
    end
    input_hash
end


# duck_or_moose returns the value assosciated
# with the key 'duck' if the hash has such a
# key, or the word 'moose' otherwise
#
#  duck_or_moose({'duck'=> 'daffy', 'a'=>2}) #=> 'daffy'
#
#  duck_or_moose({'dog'=> 'snoopy'}) #=> 'moose'
#
def duck_or_moose(input_hash)
    if input_hash.has_key?('duck')
        input_hash['duck']
    else
        return 'moose'
    end
end



# wheres_wally returns 'here!' if 'wally' is
# one of the values in the hash and 'not here'
# otherwise e.g
#
#   wheres_wally({'a'=>1, 'b'=>2}) #=> "not here"
#
#   wheres_wally({'a'=> 'wally'}) #=> "here!"
#
def wheres_wally(input_hash)
     if input_hash.has_value?('wally')
        return 'here!'
    else
        return 'not here'
    end
end



# pretty_print prints out the values in
# a hash and returns nil e.g.
#
#    pretty_print({'a'=>1, 'b'=>2, 'c'=>3})
#    -> Key a has value 1.
#    -> Key b has value 2.
#    -> Key c has value 3.
#    -> There are no more keys.
#    #=> nil
#
def pretty_print(hash)
   hash.each {|key, value| puts "Key #{key} has value #{value}."}
   puts "There are no more keys."
   return nil
end


# Maxwell's serves only jaegerbombs and becks.
# The jaegerbombs especially are a rip-off.
# order_price calculates the total cost of an
# order e.g.
#
#   order_price({'jaegerbomb'=>2}) #=> 11.0
# 
#   order_price({'jaegerbomb'=>1, 'becks'=>2}) #=> 12.5
#
def order_price(order)
    total = 0    
    prices = {'jaegerbomb'=>5.5, 'becks'=>3.5}

    order.each do |drink,q|
        if prices.has_key?(drink)
           total = total + ( prices[drink] * q)       
        end
    end
     return total
end


# count_words returns the words in a sentence
# along with their frequencies
#
#  count_words("that that that that lady just said should have been which")
#  #=> {'that'=> 4, 'lady'=>1, 'just'=>1, 'said'=>1, 'should'=>1, 'have'=>1,
#       'been'=> 1, 'which'=>1}
#
def count_words(sentence)
    
    h = {}
    arg = sentence.split
    arg.each do |word|
    if h.has_key?(word)
        # if the letter is already in the hash, increase
        # its count by 1
        h[word] += 1
    else # letter isn't in the hash
        # so put it in and set the count to 1
        h[word] = 1
    end
end
return h
end


# tell_story_with_defaults should work as follow
#
#   tell_story({}) #=> "It was a dark and stormy night ..."
#
#   tell_story({'adj1'=>'hot', 'adj2'=>'sunny', 'time_of_day'=> 'afternoon'})
#    #=> "It was a hot and sunny afternoon ..."
#
#   tell_story({'adj2'=>'steamy'}) #=> "It was a dark and steamy night ..."
#
def tell_story(opts={})
    # TODO put in the defaults if no value provided
    opts= {'adj1' => 'dark', 'adj2' => 'stormy', 'time_of_day' => 'night'}.merge(opts)

    # leave this alone
    story_beginning(opts)
end

# Leave story_beginning alone
def story_beginning(opts)
    "It was a #{opts['adj1']} and #{opts['adj2']} #{opts['time_of_day']} ..."
end

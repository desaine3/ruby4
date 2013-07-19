h = {'one' => 1, 'two' => 2, 'three' => 3}

# Accessing elements
# ------------------

h['one']

h['two']

h['four']

# Setting elements
# ----------------

h['five'] = 5

h['one'] = 1.0

h.delete('one')  # What does this return? Does it change the hash?

# Some methods
# ------------

h.length

h.empty?

h.keys

k.values

h.has_key?('one')

h.has_value?(7)


# Iterating
# ---------

h.each {|key, value| puts "#{key}: #{value}"}

h.select {|key, value| value.even? }


# Combining
# ---------

h1 = {'a'=>1, 'b'=>2}
h2 = {'b'=>3, 'c'=>4}

h1.merge(h2)
h1    # what has this done to h1?
h1 	  # what is h1 now?


# Using a hash for counting
# -------------------------

# start with an empty hash
h = {}

['a', 'b', 'a', 'a'].each do |letter|
    if h.has_key?(letter)
        # if the letter is already in the hash, increase
        # its count by 1
        h[letter] += 1
    else # letter isn't in the hash
        # so put it in and set the count to 1
        h[letter] = 1
    end
end

h   # what is h now?

# A slicker way to count (extension)
# ----------------------------------

# A slightly slicker way of doing this is
# using a hash with a default value:

h = Hash.new(0) # 0 is the default value that is 
                # returned when the key is missing

['a', 'b', 'a', 'a'].each do |letter|
    h[letter] += 1
end
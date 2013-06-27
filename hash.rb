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

h.invert

# Iterating
# ---------

h.each {|key, value| puts "#{key}: #{value}"}


# Combining
# ---------

h1 = {'a'=>1, 'b'=>2}
h2 = {'b'=>3, 'c'=>4}

h1.merge(h2)
h1    # what has this done to h1?
h1.merge!(h2)
h1 	  # what is h1 now?


# Other ways of creating hashes
# -----------------------------

h = Hash.new('default')

h[1]
h

h = Hash['a', 1, 'b', 2]

h = Hash[['a',1], ['b', 2]]

# Converting to arrays (and back?)
# -------------------------------

h = {'a'=>1, 'b'=>2, 'c'=>3}

h.to_a

# How could you convert the result back into a hash?

# Challenge:
keys = ['one', 'two', 'three']
values = [1, 2, 3]
# Can you combine these two arrays into a Hash?
# (you might want to take another look at ruby3/array_ops.rb)




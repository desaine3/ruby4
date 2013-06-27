# example character
bart = {'name'=>'Bart', 'surname'=>'Simpson', 'age'=> 10, 'catchphrase' => 'Eat my shorts'}

# A function to return a character summary e.g.
#
#   summary(bart) #=> 'Bart Simpson is 10 years old. He frequently says "Eat my shorts".'
#
def summary(character)
	## TODO fix this function. Careful with the " inside the string!
	return character['name']
end

# A function to print a hash's keys and values e.g.
#
#   properties(bart)
#   name: Bart
#	surname: Simpson
#	age: 10
#	catchphrase: Eat my shorts
#   # => nil
#
def properties(hash)
	# TODO iterate over the hash, printing out keys and values
	
	return nil
end	

# Returns a hash with only the key/value pairs whose values are strings
#
# 	only_strings(bart) #=> {'name'=>'Bart', 'surname'=>'Simpson', 'catchphrase' => 'Eat my shorts'}
# 
def only_strings(hash)
	h = {}	
	# TODO iterate over hash and put the appropiate values into h
	return h
end

### Extension

# 1. Look up the Hash#select method and see if you can come up with a shorter
# 	 version of 'only_strings'
# 2. Write a new method 'only' so that only(String, hash) works the same as 'only_strings'

# Returns a new hash with keys converted into symbols e.g
# 
#    symbolize_keys({'a'=> 1, :b=>2}) #=> {:a => 1, :b => 2}
#
def symbolize_keys(h)
    new_h = {}
    # iterate over h and put the values into new_h
    h.each do |key, value|
        new_h[key.to_sym] = value

    end
    return new_h
end
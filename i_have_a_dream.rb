
# Read the text in from the file and remove the capitals and punctuation
def read_text
    File.open('i_have_a_dream.txt', 'r') do |f|
        raw_text = f.read  # read the contents of the file
        text = raw_text.downcase  # remove capitals

        text = text.gsub(/[^a-z\s]/, '')  # remove everything apart from a-z and spaces

        # gsub uses a regular expression. The / / mark the start and end of the expression
        # [^  ] means "everything apart from things in this bracket"
        # a-z \s means characters a-z and spaces
        # gsub then replaces every character apart from a-z and spaces with the empty string
        return text
    end
end


# Reads in a string of (unpunctuated, downcased) text
# and returns a hash of frequencies e.g.
#
#  frequencies("a cat and a dog") #=> {"a"=>2, "cat"=> 1, "and"=>1, "dog"=>1}
#
def frequencies(text)
    ## TODO write this function

end

# Display all the words in "I have a dream" that occur more than n times
# along with their frequencies e.g.
#
#   dream_frequency(50)
#   to: 50                      -
#   the: 103                     | it should display these
#   of: 99                       | lines (in any order)
#   and: 54                     -
#   #=> nil                         .. and return nil
#
def dream_frequency(n)
    ## TODO write this function
end
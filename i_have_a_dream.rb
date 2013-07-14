require 'erb'
require 'json'


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

stopWords = "i|me|my|myself|we|us|our|ours|ourselves|you|your|yours|yourself|yourselves|he|him|his|himself|she|her|hers|herself|it|its|itself|they|them|their|theirs|themselves|what|which|who|whom|whose|this|that|these|those|am|is|are|was|were|be|been|being|have|has|had|having|do|does|did|doing|will|would|should|can|could|ought|i'm|you're|he's|she's|it's|we're|they're|i've|you've|we've|they've|i'd|you'd|he'd|she'd|we'd|they'd|i'll|you'll|he'll|she'll|we'll|they'll|isn't|aren't|wasn't|weren't|hasn't|haven't|hadn't|doesn't|don't|didn't|won't|wouldn't|shan't|shouldn't|can't|cannot|couldn't|mustn't|let's|that's|who's|what's|here's|there's|when's|where's|why's|how's|a|an|the|and|but|if|or|because|as|until|while|of|at|by|for|with|about|against|between|into|through|during|before|after|above|below|to|from|up|upon|down|in|out|on|off|over|under|again|further|then|once|here|there|when|where|why|how|all|any|both|each|few|more|most|other|some|such|no|nor|not|only|own|same|so|than|too|very|say|says|said|shall".split("|")

# Reads in a string of (unpunctuated, downcased) text
# and returns a hash of frequencies e.g.
#
#  frequencies("a cat and a dog") #=> {"a"=>2, "cat"=> 1, "and"=>1, "dog"=>1}
#
def frequencies(text)
    ## TODO write this function
    stopWords = "i|me|my|myself|we|us|our|ours|ourselves|you|your|yours|yourself|yourselves|he|him|his|himself|she|her|hers|herself|it|its|itself|they|them|their|theirs|themselves|what|which|who|whom|whose|this|that|these|those|am|is|are|was|were|be|been|being|have|has|had|having|do|does|did|doing|will|would|should|can|could|ought|i'm|you're|he's|she's|it's|we're|they're|i've|you've|we've|they've|i'd|you'd|he'd|she'd|we'd|they'd|i'll|you'll|he'll|she'll|we'll|they'll|isn't|aren't|wasn't|weren't|hasn't|haven't|hadn't|doesn't|don't|didn't|won't|wouldn't|shan't|shouldn't|can't|cannot|couldn't|mustn't|let's|that's|who's|what's|here's|there's|when's|where's|why's|how's|a|an|the|and|but|if|or|because|as|until|while|of|at|by|for|with|about|against|between|into|through|during|before|after|above|below|to|from|up|upon|down|in|out|on|off|over|under|again|further|then|once|here|there|when|where|why|how|all|any|both|each|few|more|most|other|some|such|no|nor|not|only|own|same|so|than|too|very|say|says|said|shall".split("|")

    h = Hash.new(0)
    text.split.each do |w|
        h[w] += 1 unless stopWords.include?(w)
    end
    return h
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


def visualise(data = {a: 1, b: 2, c: 4})
    words_with_frequencies = data.to_a
    erb = ERB.new(File.read('index.html.erb'))
    File.open('index.html', 'w') do |f|
        f.write(erb.result(binding))
    end
end

def make_vis
    visualise(frequencies(read_text))
end
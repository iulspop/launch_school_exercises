text = File.read('sample.txt')
sentences = text.split(/(?<=\.)|(?<=\?)|(?<=!)/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"

=begin
Have you ever wanted to split a text into sentences while including the period in the corect sentence? You can use Regex lookbehind to do that like so:
You simply modify line 2 to 
```
sentences = text.split(/(?<=\.)/)
```
This uses the Regex lookbehind `(?<=X)` where X is the pattern. Which asserts: what immediately precedes the current position is the pattern X. It means that it matches a position that meets that assertion. So the regex engine will match not the `\.` or the period character, but the empty string position where the pattern `\.` immediately precedes it. So, the split won't consume the period character, but the empty boundary next to it.

You can read more about it here: http://www.rexegg.com/regex-lookarounds.html
=end
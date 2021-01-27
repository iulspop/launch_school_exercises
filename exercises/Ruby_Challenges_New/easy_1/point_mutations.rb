=begin
get longest string
cut to length of shorter string from 0 to X

two equal length strings

compute differences in characters

counter
index
loop..
increment counter if char diff
=end

class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    equal_strands = cut_longest_strand_to_equal_length(other_strand)
    count_point_mutations(equal_strands)
  end

  private

  attr_reader :strand

  def cut_longest_strand_to_equal_length(other_strand)
    short_strand, long_strand = [strand, other_strand].sort_by(&:size)
    long_strand = long_strand[0..(short_strand.length - 1)]
    [short_strand, long_strand]
  end

  def count_point_mutations(equal_strands)
    strand1, strand2 = equal_strands
    point_mutations = 0
    index = 0
    until index >= (strand1.length)
      point_mutations += 1 if strand1[index] != strand2[index]
      index += 1
    end
    point_mutations
  end
end
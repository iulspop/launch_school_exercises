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
    count_point_mutations(other_strand)
  end

  private

  attr_reader :strand

  def count_point_mutations(other_strand)
    short_strand, long_strand = [strand, other_strand].sort_by(&:size)
    point_mutations = 0
    short_strand.length.times do |index|
      point_mutations += 1 if short_strand[index] != long_strand[index]
    end
    point_mutations
  end
end